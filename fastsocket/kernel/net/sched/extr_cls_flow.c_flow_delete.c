
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct flow_filter {int list; } ;


 int flow_destroy_filter (struct tcf_proto*,struct flow_filter*) ;
 int list_del (int *) ;
 int tcf_tree_lock (struct tcf_proto*) ;
 int tcf_tree_unlock (struct tcf_proto*) ;

__attribute__((used)) static int flow_delete(struct tcf_proto *tp, unsigned long arg)
{
 struct flow_filter *f = (struct flow_filter *)arg;

 tcf_tree_lock(tp);
 list_del(&f->list);
 tcf_tree_unlock(tp);
 flow_destroy_filter(tp, f);
 return 0;
}
