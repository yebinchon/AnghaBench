
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_police {scalar_t__ tcf_refcnt; int tcf_bindcnt; } ;
struct tc_action {struct tcf_police* priv; } ;


 int tcf_police_destroy (struct tcf_police*) ;

__attribute__((used)) static int tcf_act_police_cleanup(struct tc_action *a, int bind)
{
 struct tcf_police *p = a->priv;
 int ret = 0;

 if (p != ((void*)0)) {
  if (bind)
   p->tcf_bindcnt--;

  p->tcf_refcnt--;
  if (p->tcf_refcnt <= 0 && !p->tcf_bindcnt) {
   tcf_police_destroy(p);
   ret = 1;
  }
 }
 return ret;
}
