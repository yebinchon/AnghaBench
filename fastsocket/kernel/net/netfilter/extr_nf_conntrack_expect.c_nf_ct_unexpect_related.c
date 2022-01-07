
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_expect {int timeout; } ;


 scalar_t__ del_timer (int *) ;
 int nf_conntrack_lock ;
 int nf_ct_expect_put (struct nf_conntrack_expect*) ;
 int nf_ct_unlink_expect (struct nf_conntrack_expect*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void nf_ct_unexpect_related(struct nf_conntrack_expect *exp)
{
 spin_lock_bh(&nf_conntrack_lock);
 if (del_timer(&exp->timeout)) {
  nf_ct_unlink_expect(exp);
  nf_ct_expect_put(exp);
 }
 spin_unlock_bh(&nf_conntrack_lock);
}
