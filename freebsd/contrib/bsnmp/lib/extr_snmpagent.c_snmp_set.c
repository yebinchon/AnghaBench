
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u_int ;
struct snmp_value {scalar_t__ syntax; int var; } ;
struct snmp_pdu {size_t nbindings; scalar_t__ version; size_t error_index; int error_status; struct snmp_value* bindings; } ;
struct TYPE_7__ {int len; } ;
struct snmp_node {scalar_t__ type; int flags; scalar_t__ syntax; int (* op ) (TYPE_2__*,struct snmp_value*,int ,int ,int ) ;int index; TYPE_1__ oid; int name; } ;
struct TYPE_8__ {int code; size_t var_index; int * scratch; void* data; } ;
struct context {TYPE_2__ ctx; int * scratch; struct snmp_node** node; int dlist; } ;
struct asn_buf {int dummy; } ;
typedef enum snmp_syntax { ____Placeholder_snmp_syntax } snmp_syntax ;
typedef enum snmp_ret { ____Placeholder_snmp_ret } snmp_ret ;
typedef enum asn_err { ____Placeholder_asn_err } asn_err ;
typedef int context ;


 int ASN_ERR_EOBUF ;
 int ASN_ERR_OK ;
 int SET ;
 scalar_t__ SNMP_CODE_OK ;

 void* SNMP_ERR_BADVALUE ;

 void* SNMP_ERR_GENERR ;


 int SNMP_ERR_NOERROR ;
 void* SNMP_ERR_NOSUCHNAME ;




 int SNMP_ERR_TOOBIG ;





 int SNMP_NODE_CANSET ;
 scalar_t__ SNMP_NODE_LEAF ;
 int SNMP_OP_COMMIT ;
 int SNMP_OP_SET ;
 int SNMP_RET_ERR ;
 int SNMP_RET_IGN ;
 int SNMP_RET_OK ;
 int SNMP_SYNTAX_NOSUCHOBJECT ;
 scalar_t__ SNMP_V1 ;
 int TAILQ_INIT (int *) ;
 scalar_t__ TR (int ) ;
 int asn_oid2str_r (int *,int ) ;
 struct snmp_node* find_node (struct snmp_value*,int*) ;
 struct snmp_node* find_subnode (struct snmp_value*) ;
 int memset (struct context*,int ,int) ;
 int oidbuf ;
 int rollback (struct context*,struct snmp_pdu*,size_t) ;
 int snmp_binding_encode (struct asn_buf*,struct snmp_value*) ;
 int snmp_debug (char*,...) ;
 int snmp_dep_commit (TYPE_2__*) ;
 int snmp_dep_finish (TYPE_2__*) ;
 int snmp_dep_rollback (TYPE_2__*) ;
 int snmp_error (char*,...) ;
 scalar_t__ snmp_fix_encoding (struct asn_buf*,struct snmp_pdu*) ;
 int snmp_pdu_create_response (struct snmp_pdu*,struct snmp_pdu*) ;
 scalar_t__ snmp_pdu_encode_header (struct asn_buf*,struct snmp_pdu*) ;
 int snmp_pdu_free (struct snmp_pdu*) ;
 scalar_t__ snmp_value_copy (struct snmp_value*,struct snmp_value*) ;
 int stub1 (TYPE_2__*,struct snmp_value*,int ,int ,int ) ;
 int stub2 (TYPE_2__*,struct snmp_value*,int ,int ,int ) ;

enum snmp_ret
snmp_set(struct snmp_pdu *pdu, struct asn_buf *resp_b,
    struct snmp_pdu *resp, void *data)
{
 int ret;
 u_int i;
 enum asn_err asnerr;
 struct context context;
 const struct snmp_node *np;
 struct snmp_value *b;
 enum snmp_syntax except;

 memset(&context, 0, sizeof(context));
 TAILQ_INIT(&context.dlist);
 context.ctx.data = data;

 snmp_pdu_create_response(pdu, resp);

 if (snmp_pdu_encode_header(resp_b, resp))
  return (SNMP_RET_IGN);





 for (i = 0; i < pdu->nbindings; i++) {
  b = &pdu->bindings[i];

  if ((np = context.node[i] = find_node(b, &except)) == ((void*)0)) {

   if (TR(SET))
    snmp_debug("set: node not found %s",
        asn_oid2str_r(&b->var, oidbuf));
   if (pdu->version == SNMP_V1) {
    pdu->error_index = i + 1;
    pdu->error_status = SNMP_ERR_NOSUCHNAME;
   } else if ((np = find_subnode(b)) != ((void*)0)) {

    pdu->error_index = i + 1;
    pdu->error_status = 136;
   } else if (except == SNMP_SYNTAX_NOSUCHOBJECT) {
    pdu->error_index = i + 1;
    pdu->error_status = 135;
   } else {
    pdu->error_index = i + 1;
    pdu->error_status = 134;
   }
   snmp_pdu_free(resp);
   return (SNMP_RET_ERR);
  }







  if (np->type == SNMP_NODE_LEAF &&
      !(np->flags & SNMP_NODE_CANSET)) {
   if (pdu->version == SNMP_V1) {
    pdu->error_index = i + 1;
    pdu->error_status = SNMP_ERR_NOSUCHNAME;
   } else {
    pdu->error_index = i + 1;
    pdu->error_status = 136;
   }
   snmp_pdu_free(resp);
   return (SNMP_RET_ERR);
  }



  if (np->syntax != b->syntax) {
   if (pdu->version == SNMP_V1) {
    pdu->error_index = i + 1;
    pdu->error_status = SNMP_ERR_BADVALUE;
   } else {
    pdu->error_index = i + 1;
    pdu->error_status = 129;
   }
   snmp_pdu_free(resp);
   return (SNMP_RET_ERR);
  }



  if (snmp_value_copy(&resp->bindings[i], b)) {
   pdu->error_index = i + 1;
   pdu->error_status = SNMP_ERR_GENERR;
   snmp_pdu_free(resp);
   return (SNMP_RET_ERR);
  }
  asnerr = snmp_binding_encode(resp_b, &resp->bindings[i]);
  if (asnerr == ASN_ERR_EOBUF) {
   pdu->error_index = i + 1;
   pdu->error_status = SNMP_ERR_TOOBIG;
   snmp_pdu_free(resp);
   return (SNMP_RET_ERR);
  } else if (asnerr != ASN_ERR_OK) {
   pdu->error_index = i + 1;
   pdu->error_status = SNMP_ERR_GENERR;
   snmp_pdu_free(resp);
   return (SNMP_RET_ERR);
  }
  resp->nbindings++;
 }

 context.ctx.code = SNMP_RET_OK;





 for (i = 0; i < pdu->nbindings; i++) {
  b = &pdu->bindings[i];
  np = context.node[i];

  context.ctx.var_index = i + 1;
  context.ctx.scratch = &context.scratch[i];

  ret = (*np->op)(&context.ctx, b, np->oid.len, np->index,
      SNMP_OP_SET);

  if (TR(SET))
   snmp_debug("set: action %s returns %d", np->name, ret);

  if (pdu->version == SNMP_V1) {
   switch (ret) {
     case 135:
    ret = SNMP_ERR_NOSUCHNAME;
    break;
     case 129:

    ret = SNMP_ERR_BADVALUE;
    break;
     case 130:
    ret = SNMP_ERR_BADVALUE;
    break;
     case 131:

    ret = SNMP_ERR_BADVALUE;
    break;
     case 128:
    ret = SNMP_ERR_BADVALUE;
    break;
     case 134:
    ret = SNMP_ERR_NOSUCHNAME;
    break;
     case 137:
    ret = SNMP_ERR_BADVALUE;
    break;
     case 133:
    ret = SNMP_ERR_GENERR;
    break;
     case 139:
    ret = SNMP_ERR_GENERR;
    break;
     case 132:
    ret = SNMP_ERR_GENERR;
    break;
     case 140:

    ret = SNMP_ERR_GENERR;
    break;
     case 136:
    ret = SNMP_ERR_NOSUCHNAME;
    break;
     case 138:
    ret = SNMP_ERR_BADVALUE;
    break;
   }
  }
  if (ret != SNMP_ERR_NOERROR) {
   pdu->error_index = i + 1;
   pdu->error_status = ret;

   rollback(&context, pdu, i);
   snmp_pdu_free(resp);

   context.ctx.code = SNMP_RET_ERR;

   goto errout;
  }
 }




 if (TR(SET))
  snmp_debug("set: set operations ok");

 if ((ret = snmp_dep_commit(&context.ctx)) != SNMP_ERR_NOERROR) {
  pdu->error_status = ret;
  pdu->error_index = context.ctx.var_index;

  if ((ret = snmp_dep_rollback(&context.ctx)) != SNMP_ERR_NOERROR) {
   if (pdu->version != SNMP_V1) {
    pdu->error_status = 132;
    pdu->error_index = 0;
   }
  }
  rollback(&context, pdu, i);
  snmp_pdu_free(resp);

  context.ctx.code = SNMP_RET_ERR;

  goto errout;
 }






 if (TR(SET))
  snmp_debug("set: commiting");

 for (i = 0; i < pdu->nbindings; i++) {
  b = &resp->bindings[i];
  np = context.node[i];

  context.ctx.var_index = i + 1;
  context.ctx.scratch = &context.scratch[i];

  ret = (*np->op)(&context.ctx, b, np->oid.len, np->index,
      SNMP_OP_COMMIT);

  if (ret != SNMP_ERR_NOERROR)
   snmp_error("set: commit failed (%d) on"
       " variable %s index %u", ret,
       asn_oid2str_r(&b->var, oidbuf), i);
 }

 if (snmp_fix_encoding(resp_b, resp) != SNMP_CODE_OK) {
  snmp_error("set: fix_encoding failed");
  snmp_pdu_free(resp);
  context.ctx.code = SNMP_RET_IGN;
 }




  errout:
 snmp_dep_finish(&context.ctx);

 if (TR(SET))
  snmp_debug("set: returning %d", context.ctx.code);

 return (context.ctx.code);
}
