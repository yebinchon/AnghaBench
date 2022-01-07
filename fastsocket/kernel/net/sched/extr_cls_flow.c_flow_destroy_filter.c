
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct flow_filter {int ematches; int exts; int perturb_timer; } ;


 int del_timer_sync (int *) ;
 int kfree (struct flow_filter*) ;
 int tcf_em_tree_destroy (struct tcf_proto*,int *) ;
 int tcf_exts_destroy (struct tcf_proto*,int *) ;

__attribute__((used)) static void flow_destroy_filter(struct tcf_proto *tp, struct flow_filter *f)
{
 del_timer_sync(&f->perturb_timer);
 tcf_exts_destroy(tp, &f->exts);
 tcf_em_tree_destroy(tp, &f->ematches);
 kfree(f);
}
