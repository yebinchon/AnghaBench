
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state_afinfo {size_t family; } ;


 int EAFNOSUPPORT ;
 int EINVAL ;
 int ENOBUFS ;
 size_t NPROTO ;
 scalar_t__ unlikely (int) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;
 struct xfrm_state_afinfo** xfrm_state_afinfo ;
 int xfrm_state_afinfo_lock ;

int xfrm_state_register_afinfo(struct xfrm_state_afinfo *afinfo)
{
 int err = 0;
 if (unlikely(afinfo == ((void*)0)))
  return -EINVAL;
 if (unlikely(afinfo->family >= NPROTO))
  return -EAFNOSUPPORT;
 write_lock_bh(&xfrm_state_afinfo_lock);
 if (unlikely(xfrm_state_afinfo[afinfo->family] != ((void*)0)))
  err = -ENOBUFS;
 else
  xfrm_state_afinfo[afinfo->family] = afinfo;
 write_unlock_bh(&xfrm_state_afinfo_lock);
 return err;
}
