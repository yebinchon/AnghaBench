
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_action {int order; struct tc_action* next; } ;
struct nlattr {int dummy; } ;


 struct tc_action* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct tc_action*) ;
 int TCA_ACT_MAX_PRIO ;
 int nla_parse_nested (struct nlattr**,int,struct nlattr*,int *) ;
 int tcf_action_destroy (struct tc_action*,int) ;
 struct tc_action* tcf_action_init_1 (struct nlattr*,struct nlattr*,char*,int,int) ;

struct tc_action *tcf_action_init(struct nlattr *nla, struct nlattr *est,
      char *name, int ovr, int bind)
{
 struct nlattr *tb[TCA_ACT_MAX_PRIO+1];
 struct tc_action *head = ((void*)0), *act, *act_prev = ((void*)0);
 int err;
 int i;

 err = nla_parse_nested(tb, TCA_ACT_MAX_PRIO, nla, ((void*)0));
 if (err < 0)
  return ERR_PTR(err);

 for (i = 1; i <= TCA_ACT_MAX_PRIO && tb[i]; i++) {
  act = tcf_action_init_1(tb[i], est, name, ovr, bind);
  if (IS_ERR(act))
   goto err;
  act->order = i;

  if (head == ((void*)0))
   head = act;
  else
   act_prev->next = act;
  act_prev = act;
 }
 return head;

err:
 if (head != ((void*)0))
  tcf_action_destroy(head, bind);
 return act;
}
