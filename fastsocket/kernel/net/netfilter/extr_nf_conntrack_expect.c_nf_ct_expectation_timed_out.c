
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_expect {int dummy; } ;


 int nf_conntrack_lock ;
 int nf_ct_expect_put (struct nf_conntrack_expect*) ;
 int nf_ct_unlink_expect (struct nf_conntrack_expect*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void nf_ct_expectation_timed_out(unsigned long ul_expect)
{
 struct nf_conntrack_expect *exp = (void *)ul_expect;

 spin_lock_bh(&nf_conntrack_lock);
 nf_ct_unlink_expect(exp);
 spin_unlock_bh(&nf_conntrack_lock);
 nf_ct_expect_put(exp);
}
