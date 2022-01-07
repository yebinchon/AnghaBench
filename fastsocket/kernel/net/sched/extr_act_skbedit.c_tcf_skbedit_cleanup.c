
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_skbedit {int common; } ;
struct tc_action {struct tcf_skbedit* priv; } ;


 int skbedit_hash_info ;
 int tcf_hash_release (int *,int,int *) ;

__attribute__((used)) static inline int tcf_skbedit_cleanup(struct tc_action *a, int bind)
{
 struct tcf_skbedit *d = a->priv;

 if (d)
  return tcf_hash_release(&d->common, bind, &skbedit_hash_info);
 return 0;
}
