
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_nat {int common; } ;
struct tc_action {struct tcf_nat* priv; } ;


 int nat_hash_info ;
 int tcf_hash_release (int *,int,int *) ;

__attribute__((used)) static int tcf_nat_cleanup(struct tc_action *a, int bind)
{
 struct tcf_nat *p = a->priv;

 return tcf_hash_release(&p->common, bind, &nat_hash_info);
}
