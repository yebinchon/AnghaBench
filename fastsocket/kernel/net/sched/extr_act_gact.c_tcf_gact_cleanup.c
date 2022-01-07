
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_gact {int common; } ;
struct tc_action {struct tcf_gact* priv; } ;


 int gact_hash_info ;
 int tcf_hash_release (int *,int,int *) ;

__attribute__((used)) static int tcf_gact_cleanup(struct tc_action *a, int bind)
{
 struct tcf_gact *gact = a->priv;

 if (gact)
  return tcf_hash_release(&gact->common, bind, &gact_hash_info);
 return 0;
}
