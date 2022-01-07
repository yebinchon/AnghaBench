
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct snmp_value {int var; } ;
struct snmp_pdu {scalar_t__ version; scalar_t__ error_index; int error_status; struct snmp_value* bindings; } ;
struct TYPE_3__ {int len; } ;
struct snmp_node {int (* op ) (TYPE_2__*,struct snmp_value*,int ,int ,int ) ;int index; TYPE_1__ oid; } ;
struct TYPE_4__ {int * scratch; } ;
struct context {TYPE_2__ ctx; int * scratch; struct snmp_node** node; } ;


 int SNMP_ERR_NOERROR ;
 int SNMP_ERR_UNDO_FAILED ;
 int SNMP_OP_ROLLBACK ;
 scalar_t__ SNMP_V1 ;
 int asn_oid2str (int *) ;
 int snmp_error (char*,int,int ,size_t) ;
 int stub1 (TYPE_2__*,struct snmp_value*,int ,int ,int ) ;

__attribute__((used)) static void
rollback(struct context *context, struct snmp_pdu *pdu, u_int i)
{
 struct snmp_value *b;
 const struct snmp_node *np;
 int ret;

 while (i-- > 0) {
  b = &pdu->bindings[i];
  np = context->node[i];

  context->ctx.scratch = &context->scratch[i];

  ret = (*np->op)(&context->ctx, b, np->oid.len, np->index,
      SNMP_OP_ROLLBACK);

  if (ret != SNMP_ERR_NOERROR) {
   snmp_error("set: rollback failed (%d) on variable %s "
       "index %u", ret, asn_oid2str(&b->var), i);
   if (pdu->version != SNMP_V1) {
    pdu->error_status = SNMP_ERR_UNDO_FAILED;
    pdu->error_index = 0;
   }
  }
 }
}
