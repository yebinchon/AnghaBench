
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_type {size_t proto; } ;
struct xfrm_state_afinfo {struct xfrm_type** type_map; } ;


 int EAFNOSUPPORT ;
 int ENOENT ;
 scalar_t__ unlikely (int) ;
 struct xfrm_state_afinfo* xfrm_state_lock_afinfo (unsigned short) ;
 int xfrm_state_unlock_afinfo (struct xfrm_state_afinfo*) ;

int xfrm_unregister_type(const struct xfrm_type *type, unsigned short family)
{
 struct xfrm_state_afinfo *afinfo = xfrm_state_lock_afinfo(family);
 const struct xfrm_type **typemap;
 int err = 0;

 if (unlikely(afinfo == ((void*)0)))
  return -EAFNOSUPPORT;
 typemap = afinfo->type_map;

 if (unlikely(typemap[type->proto] != type))
  err = -ENOENT;
 else
  typemap[type->proto] = ((void*)0);
 xfrm_state_unlock_afinfo(afinfo);
 return err;
}
