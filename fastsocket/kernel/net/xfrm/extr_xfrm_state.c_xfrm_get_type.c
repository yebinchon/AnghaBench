
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct xfrm_type {int owner; } ;
struct xfrm_state_afinfo {struct xfrm_type** type_map; } ;


 int request_module (char*,unsigned short,size_t) ;
 int try_module_get (int ) ;
 scalar_t__ unlikely (int ) ;
 struct xfrm_state_afinfo* xfrm_state_get_afinfo (unsigned short) ;
 int xfrm_state_put_afinfo (struct xfrm_state_afinfo*) ;

__attribute__((used)) static const struct xfrm_type *xfrm_get_type(u8 proto, unsigned short family)
{
 struct xfrm_state_afinfo *afinfo;
 const struct xfrm_type **typemap;
 const struct xfrm_type *type;
 int modload_attempted = 0;

retry:
 afinfo = xfrm_state_get_afinfo(family);
 if (unlikely(afinfo == ((void*)0)))
  return ((void*)0);
 typemap = afinfo->type_map;

 type = typemap[proto];
 if (unlikely(type && !try_module_get(type->owner)))
  type = ((void*)0);
 if (!type && !modload_attempted) {
  xfrm_state_put_afinfo(afinfo);
  request_module("xfrm-type-%d-%d", family, proto);
  modload_attempted = 1;
  goto retry;
 }

 xfrm_state_put_afinfo(afinfo);
 return type;
}
