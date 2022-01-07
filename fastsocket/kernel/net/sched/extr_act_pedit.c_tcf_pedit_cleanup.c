
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_pedit {int common; struct tc_pedit_key* tcfp_keys; } ;
struct tc_pedit_key {int dummy; } ;
struct tc_action {struct tcf_pedit* priv; } ;


 int kfree (struct tc_pedit_key*) ;
 int pedit_hash_info ;
 scalar_t__ tcf_hash_release (int *,int,int *) ;

__attribute__((used)) static int tcf_pedit_cleanup(struct tc_action *a, int bind)
{
 struct tcf_pedit *p = a->priv;

 if (p) {
  struct tc_pedit_key *keys = p->tcfp_keys;
  if (tcf_hash_release(&p->common, bind, &pedit_hash_info)) {
   kfree(keys);
   return 1;
  }
 }
 return 0;
}
