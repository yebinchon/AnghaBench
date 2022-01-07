
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; } ;
struct snmp_node {scalar_t__ name; int index; TYPE_1__ oid; int (* op ) (TYPE_2__*,int *,int ,int ,int ) ;} ;
struct assign {scalar_t__ node_name; int value; int scratch; } ;
struct TYPE_5__ {int * scratch; } ;


 int LOG_ERR ;
 int SNMP_OP_COMMIT ;
 struct assign* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct assign*,int ) ;
 int assigns ;
 int free (struct assign*) ;
 int link ;
 TYPE_2__* snmp_ctx ;
 int snmp_value_free (int *) ;
 int stub1 (TYPE_2__*,int *,int ,int ,int ) ;
 int syslog (int ,char*) ;
 struct snmp_node* tree ;
 size_t tree_size ;

__attribute__((used)) static void
do_commit(void)
{
 struct assign *tp;
 struct snmp_node *node;

 while ((tp = TAILQ_FIRST(&assigns)) != ((void*)0)) {
  TAILQ_REMOVE(&assigns, tp, link);
  for (node = tree; node < &tree[tree_size]; node++)
   if (node->name == tp->node_name) {
    snmp_ctx->scratch = &tp->scratch;
    (void)(*node->op)(snmp_ctx, &tp->value,
        node->oid.len, node->index, SNMP_OP_COMMIT);
    break;
   }
  if (node == &tree[tree_size])
   syslog(LOG_ERR, "failed to find node for commit");
  snmp_value_free(&tp->value);
  free(tp);
 }
}
