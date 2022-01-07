
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state_afinfo {int owner; struct xfrm_mode** mode_map; } ;
struct xfrm_mode {size_t encap; struct xfrm_state_afinfo* afinfo; } ;


 int EAFNOSUPPORT ;
 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 size_t XFRM_MODE_MAX ;
 int try_module_get (int ) ;
 scalar_t__ unlikely (int) ;
 struct xfrm_state_afinfo* xfrm_state_lock_afinfo (int) ;
 int xfrm_state_unlock_afinfo (struct xfrm_state_afinfo*) ;

int xfrm_register_mode(struct xfrm_mode *mode, int family)
{
 struct xfrm_state_afinfo *afinfo;
 struct xfrm_mode **modemap;
 int err;

 if (unlikely(mode->encap >= XFRM_MODE_MAX))
  return -EINVAL;

 afinfo = xfrm_state_lock_afinfo(family);
 if (unlikely(afinfo == ((void*)0)))
  return -EAFNOSUPPORT;

 err = -EEXIST;
 modemap = afinfo->mode_map;
 if (modemap[mode->encap])
  goto out;

 err = -ENOENT;
 if (!try_module_get(afinfo->owner))
  goto out;

 mode->afinfo = afinfo;
 modemap[mode->encap] = mode;
 err = 0;

out:
 xfrm_state_unlock_afinfo(afinfo);
 return err;
}
