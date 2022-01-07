
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_state_afinfo {struct xfrm_mode** mode_map; } ;
struct xfrm_mode {size_t encap; TYPE_1__* afinfo; } ;
struct TYPE_2__ {int owner; } ;


 int EAFNOSUPPORT ;
 int EINVAL ;
 int ENOENT ;
 size_t XFRM_MODE_MAX ;
 scalar_t__ likely (int) ;
 int module_put (int ) ;
 scalar_t__ unlikely (int) ;
 struct xfrm_state_afinfo* xfrm_state_lock_afinfo (int) ;
 int xfrm_state_unlock_afinfo (struct xfrm_state_afinfo*) ;

int xfrm_unregister_mode(struct xfrm_mode *mode, int family)
{
 struct xfrm_state_afinfo *afinfo;
 struct xfrm_mode **modemap;
 int err;

 if (unlikely(mode->encap >= XFRM_MODE_MAX))
  return -EINVAL;

 afinfo = xfrm_state_lock_afinfo(family);
 if (unlikely(afinfo == ((void*)0)))
  return -EAFNOSUPPORT;

 err = -ENOENT;
 modemap = afinfo->mode_map;
 if (likely(modemap[mode->encap] == mode)) {
  modemap[mode->encap] = ((void*)0);
  module_put(mode->afinfo->owner);
  err = 0;
 }

 xfrm_state_unlock_afinfo(afinfo);
 return err;
}
