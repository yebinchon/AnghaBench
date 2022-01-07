
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_policy {int dummy; } ;


 int ENOENT ;
 struct xfrm_policy* __xfrm_policy_unlink (struct xfrm_policy*,int) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;
 int xfrm_policy_kill (struct xfrm_policy*) ;
 int xfrm_policy_lock ;

int xfrm_policy_delete(struct xfrm_policy *pol, int dir)
{
 write_lock_bh(&xfrm_policy_lock);
 pol = __xfrm_policy_unlink(pol, dir);
 write_unlock_bh(&xfrm_policy_lock);
 if (pol) {
  xfrm_policy_kill(pol);
  return 0;
 }
 return -ENOENT;
}
