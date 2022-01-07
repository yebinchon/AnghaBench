
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_expect {int rcu; int use; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int call_rcu (int *,int ) ;
 int nf_ct_expect_free_rcu ;

void nf_ct_expect_put(struct nf_conntrack_expect *exp)
{
 if (atomic_dec_and_test(&exp->use))
  call_rcu(&exp->rcu, nf_ct_expect_free_rcu);
}
