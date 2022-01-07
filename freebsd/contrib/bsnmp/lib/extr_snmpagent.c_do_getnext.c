
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; scalar_t__* subs; } ;
struct snmp_value {int syntax; TYPE_1__ var; } ;
struct snmp_pdu {scalar_t__ version; int error_status; } ;
struct snmp_node {scalar_t__ type; int (* op ) (int *,struct snmp_value*,int ,int ,int ) ;TYPE_1__ oid; int index; int syntax; } ;
struct context {int ctx; } ;
typedef enum snmp_ret { ____Placeholder_snmp_ret } snmp_ret ;


 int GETNEXT ;
 int SNMP_ERR_GENERR ;
 int SNMP_ERR_NOERROR ;
 int SNMP_ERR_NOSUCHNAME ;
 scalar_t__ SNMP_NODE_LEAF ;
 int SNMP_OP_GET ;
 int SNMP_OP_GETNEXT ;
 int SNMP_RET_ERR ;
 int SNMP_RET_OK ;
 int SNMP_SYNTAX_ENDOFMIBVIEW ;
 scalar_t__ SNMP_V1 ;
 scalar_t__ TR (int ) ;
 int asn_oid2str (TYPE_1__*) ;
 struct snmp_node* next_node (struct snmp_value const*,int*) ;
 int snmp_debug (char*,int ,...) ;
 int stub1 (int *,struct snmp_value*,int ,int ,int ) ;
 int stub2 (int *,struct snmp_value*,int ,int ,int ) ;
 struct snmp_node const* tree ;
 int tree_size ;

__attribute__((used)) static enum snmp_ret
do_getnext(struct context *context, const struct snmp_value *inb,
    struct snmp_value *outb, struct snmp_pdu *pdu)
{
 const struct snmp_node *tp;
 int ret, next;

 if ((tp = next_node(inb, &next)) == ((void*)0))
  goto eofMib;



 if (tp->type == SNMP_NODE_LEAF || next)
  outb->var = tp->oid;
 else
  outb->var = inb->var;

 for (;;) {
  outb->syntax = tp->syntax;
  if (tp->type == SNMP_NODE_LEAF) {

   outb->var.subs[outb->var.len++] = 0;
   ret = (*tp->op)(&context->ctx, outb, tp->oid.len,
       tp->index, SNMP_OP_GET);
  } else {

   ret = (*tp->op)(&context->ctx, outb, tp->oid.len,
        tp->index, SNMP_OP_GETNEXT);
  }
  if (ret != SNMP_ERR_NOSUCHNAME) {

   if (ret != SNMP_ERR_NOERROR && TR(GETNEXT))
    snmp_debug("getnext: %s returns %u",
        asn_oid2str(&outb->var), ret);
   break;
  }


  if (++tp == tree + tree_size)
   break;

  if (TR(GETNEXT))
   snmp_debug("getnext: no data - avancing to %s",
       asn_oid2str(&tp->oid));

  outb->var = tp->oid;
 }

 if (ret == SNMP_ERR_NOSUCHNAME) {
  eofMib:
  outb->var = inb->var;
  if (pdu->version == SNMP_V1) {
   pdu->error_status = SNMP_ERR_NOSUCHNAME;
   return (SNMP_RET_ERR);
  }
  outb->syntax = SNMP_SYNTAX_ENDOFMIBVIEW;

 } else if (ret != SNMP_ERR_NOERROR) {
  pdu->error_status = SNMP_ERR_GENERR;
  return (SNMP_RET_ERR);
 }
 return (SNMP_RET_OK);
}
