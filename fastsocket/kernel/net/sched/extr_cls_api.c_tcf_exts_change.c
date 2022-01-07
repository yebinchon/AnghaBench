
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct tcf_exts {struct tc_action* action; } ;
struct tc_action {int dummy; } ;


 int TCA_ACT_UNBIND ;
 int tcf_action_destroy (struct tc_action*,int ) ;
 int tcf_tree_lock (struct tcf_proto*) ;
 int tcf_tree_unlock (struct tcf_proto*) ;

void tcf_exts_change(struct tcf_proto *tp, struct tcf_exts *dst,
       struct tcf_exts *src)
{
}
