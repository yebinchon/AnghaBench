
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tcf_result {scalar_t__ class; scalar_t__ classid; } ;
struct tcf_proto {struct cls_cgroup_head* root; } ;
struct sk_buff {TYPE_1__* sk; } ;
struct cls_cgroup_head {int exts; int ematches; } ;
struct TYPE_4__ {scalar_t__ classid; } ;
struct TYPE_3__ {scalar_t__ sk_classid; } ;


 int current ;
 scalar_t__ in_serving_softirq () ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 TYPE_2__* task_cls_state (int ) ;
 int tcf_em_tree_match (struct sk_buff*,int *,int *) ;
 int tcf_exts_exec (struct sk_buff*,int *,struct tcf_result*) ;

__attribute__((used)) static int cls_cgroup_classify(struct sk_buff *skb, struct tcf_proto *tp,
          struct tcf_result *res)
{
 struct cls_cgroup_head *head = tp->root;
 u32 classid;

 rcu_read_lock();
 classid = task_cls_state(current)->classid;
 rcu_read_unlock();
 if (in_serving_softirq()) {

  if (!skb->sk)
   return -1;
  classid = skb->sk->sk_classid;
 }

 if (!classid)
  return -1;

 if (!tcf_em_tree_match(skb, &head->ematches, ((void*)0)))
  return -1;

 res->classid = classid;
 res->class = 0;
 return tcf_exts_exec(skb, &head->exts, res);
}
