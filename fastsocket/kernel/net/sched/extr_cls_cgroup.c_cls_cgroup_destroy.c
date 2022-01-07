
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {struct cls_cgroup_head* root; } ;
struct cls_cgroup_head {int ematches; int exts; } ;


 int kfree (struct cls_cgroup_head*) ;
 int tcf_em_tree_destroy (struct tcf_proto*,int *) ;
 int tcf_exts_destroy (struct tcf_proto*,int *) ;

__attribute__((used)) static void cls_cgroup_destroy(struct tcf_proto *tp)
{
 struct cls_cgroup_head *head = tp->root;

 if (head) {
  tcf_exts_destroy(tp, &head->exts);
  tcf_em_tree_destroy(tp, &head->ematches);
  kfree(head);
 }
}
