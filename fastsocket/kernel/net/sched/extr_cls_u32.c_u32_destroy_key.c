
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_proto {int dummy; } ;
struct tc_u_knode {struct tc_u_knode* pf; TYPE_1__* ht_down; int exts; int res; } ;
struct TYPE_2__ {int refcnt; } ;


 int kfree (struct tc_u_knode*) ;
 int tcf_exts_destroy (struct tcf_proto*,int *) ;
 int tcf_unbind_filter (struct tcf_proto*,int *) ;

__attribute__((used)) static int u32_destroy_key(struct tcf_proto *tp, struct tc_u_knode *n)
{
 tcf_unbind_filter(tp, &n->res);
 tcf_exts_destroy(tp, &n->exts);
 if (n->ht_down)
  n->ht_down->refcnt--;



 kfree(n);
 return 0;
}
