
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tc_action {struct tc_action* next; } ;
struct nlmsghdr {int nlmsg_flags; int nlmsg_seq; } ;
struct nlattr {int dummy; } ;


 scalar_t__ IS_ERR (struct tc_action*) ;
 int PTR_ERR (struct tc_action*) ;
 int RTM_NEWACTION ;
 int kfree (struct tc_action*) ;
 struct tc_action* tcf_action_init (struct nlattr*,int *,int *,int,int ) ;
 int tcf_add_notify (struct tc_action*,int ,int ,int ,int ) ;

__attribute__((used)) static int
tcf_action_add(struct nlattr *nla, struct nlmsghdr *n, u32 pid, int ovr)
{
 int ret = 0;
 struct tc_action *act;
 struct tc_action *a;
 u32 seq = n->nlmsg_seq;

 act = tcf_action_init(nla, ((void*)0), ((void*)0), ovr, 0);
 if (act == ((void*)0))
  goto done;
 if (IS_ERR(act)) {
  ret = PTR_ERR(act);
  goto done;
 }




 ret = tcf_add_notify(act, pid, seq, RTM_NEWACTION, n->nlmsg_flags);
 for (a = act; a; a = act) {
  act = a->next;
  kfree(a);
 }
done:
 return ret;
}
