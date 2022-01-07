
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state_afinfo {size_t family; } ;


 int EAFNOSUPPORT ;
 int EINVAL ;
 size_t NPROTO ;
 scalar_t__ likely (int ) ;
 scalar_t__ unlikely (int) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;
 struct xfrm_state_afinfo** xfrm_state_afinfo ;
 int xfrm_state_afinfo_lock ;

int xfrm_state_unregister_afinfo(struct xfrm_state_afinfo *afinfo)
{
 int err = 0;
 if (unlikely(afinfo == ((void*)0)))
  return -EINVAL;
 if (unlikely(afinfo->family >= NPROTO))
  return -EAFNOSUPPORT;
 write_lock_bh(&xfrm_state_afinfo_lock);
 if (likely(xfrm_state_afinfo[afinfo->family] != ((void*)0))) {
  if (unlikely(xfrm_state_afinfo[afinfo->family] != afinfo))
   err = -EINVAL;
  else
   xfrm_state_afinfo[afinfo->family] = ((void*)0);
 }
 write_unlock_bh(&xfrm_state_afinfo_lock);
 return err;
}
