
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state_afinfo {int dummy; } ;


 unsigned int NPROTO ;
 scalar_t__ unlikely (int) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;
 struct xfrm_state_afinfo** xfrm_state_afinfo ;
 int xfrm_state_afinfo_lock ;

__attribute__((used)) static struct xfrm_state_afinfo *xfrm_state_lock_afinfo(unsigned int family)
{
 struct xfrm_state_afinfo *afinfo;
 if (unlikely(family >= NPROTO))
  return ((void*)0);
 write_lock_bh(&xfrm_state_afinfo_lock);
 afinfo = xfrm_state_afinfo[family];
 if (unlikely(!afinfo))
  write_unlock_bh(&xfrm_state_afinfo_lock);
 return afinfo;
}
