
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_mirred {int dummy; } ;
struct tc_action {struct tcf_mirred* priv; } ;


 int tcf_mirred_release (struct tcf_mirred*,int) ;

__attribute__((used)) static int tcf_mirred_cleanup(struct tc_action *a, int bind)
{
 struct tcf_mirred *m = a->priv;

 if (m)
  return tcf_mirred_release(m, bind);
 return 0;
}
