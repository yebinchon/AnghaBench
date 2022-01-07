
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_4__ {scalar_t__ len; int * subs; } ;
struct snmp_value {TYPE_1__ var; } ;
struct snmp_node {scalar_t__ type; char* name; int (* op ) (TYPE_2__*,struct snmp_value*,scalar_t__,int ,int ) ;int index; TYPE_1__ oid; } ;
struct assign {char* node_name; struct snmp_value value; int scratch; } ;
struct asn_oid {int len; int * subs; } ;
typedef int nodename ;
struct TYPE_5__ {scalar_t__ var_index; int * scratch; } ;


 scalar_t__ ASN_MAXOIDLEN ;
 scalar_t__ SNMP_NODE_LEAF ;
 int SNMP_OP_SET ;
 int TAILQ_INSERT_TAIL (int *,struct assign*,int ) ;
 int asn_oid2str (struct asn_oid*) ;
 int assigns ;
 int free (struct assign*) ;
 int link ;
 struct assign* malloc (int) ;
 int report (char*,...) ;
 TYPE_2__* snmp_ctx ;
 int snprintf (char*,int,char*,char*) ;
 int stub1 (TYPE_2__*,struct snmp_value*,scalar_t__,int ,int ) ;

__attribute__((used)) static void
handle_assignment(const struct snmp_node *node, struct asn_oid *vindex,
    const struct snmp_value *value)
{
 u_int i;
 int err;
 struct assign *tp;
 char nodename[100];

 if (node->type == SNMP_NODE_LEAF) {

  if (vindex->len > 1 || (vindex->len == 1 &&
      vindex->subs[0] != 0))
   report("bad index on leaf node");
  vindex->len = 1;
  vindex->subs[0] = 0;
 } else {

  if (node->oid.len + vindex->len > ASN_MAXOIDLEN)
   report("resulting OID too long");
 }




 if ((tp = malloc(sizeof(*tp))) == ((void*)0))
  report("%m");

 tp->value = *value;
 tp->node_name = node->name;




 tp->value.var = node->oid;
 for (i = 0; i < vindex->len; i++)
  tp->value.var.subs[tp->value.var.len++] = vindex->subs[i];







 snprintf(nodename, sizeof(nodename), "%s", node->name);
 snmp_ctx->scratch = &tp->scratch;
 snmp_ctx->var_index = 0;
 err = (*node->op)(snmp_ctx, &tp->value, node->oid.len, node->index,
     SNMP_OP_SET);
 if (err != 0) {
  free(tp);
  report("assignment to %s.%s returns %d", nodename,
      asn_oid2str(vindex), err);
 }

 TAILQ_INSERT_TAIL(&assigns, tp, link);
}
