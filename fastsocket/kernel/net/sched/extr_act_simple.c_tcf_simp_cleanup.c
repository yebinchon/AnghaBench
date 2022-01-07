
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_defact {int dummy; } ;
struct tc_action {struct tcf_defact* priv; } ;


 int tcf_simp_release (struct tcf_defact*,int) ;

__attribute__((used)) static inline int tcf_simp_cleanup(struct tc_action *a, int bind)
{
 struct tcf_defact *d = a->priv;

 if (d)
  return tcf_simp_release(d, bind);
 return 0;
}
