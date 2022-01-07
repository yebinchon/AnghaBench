
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_ipt {int dummy; } ;
struct tc_action {struct tcf_ipt* priv; } ;


 int tcf_ipt_release (struct tcf_ipt*,int) ;

__attribute__((used)) static int tcf_ipt_cleanup(struct tc_action *a, int bind)
{
 struct tcf_ipt *ipt = a->priv;
 return tcf_ipt_release(ipt, bind);
}
