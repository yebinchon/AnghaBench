
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state_afinfo {struct xfrm_mode** mode_map; } ;
struct xfrm_mode {int owner; } ;


 unsigned int XFRM_MODE_MAX ;
 int request_module (char*,int,unsigned int) ;
 int try_module_get (int ) ;
 scalar_t__ unlikely (int) ;
 struct xfrm_state_afinfo* xfrm_state_get_afinfo (int) ;
 int xfrm_state_put_afinfo (struct xfrm_state_afinfo*) ;

__attribute__((used)) static struct xfrm_mode *xfrm_get_mode(unsigned int encap, int family)
{
 struct xfrm_state_afinfo *afinfo;
 struct xfrm_mode *mode;
 int modload_attempted = 0;

 if (unlikely(encap >= XFRM_MODE_MAX))
  return ((void*)0);

retry:
 afinfo = xfrm_state_get_afinfo(family);
 if (unlikely(afinfo == ((void*)0)))
  return ((void*)0);

 mode = afinfo->mode_map[encap];
 if (unlikely(mode && !try_module_get(mode->owner)))
  mode = ((void*)0);
 if (!mode && !modload_attempted) {
  xfrm_state_put_afinfo(afinfo);
  request_module("xfrm-mode-%d-%d", family, encap);
  modload_attempted = 1;
  goto retry;
 }

 xfrm_state_put_afinfo(afinfo);
 return mode;
}
