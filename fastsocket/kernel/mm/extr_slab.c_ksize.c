
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 void const* ZERO_SIZE_PTR ;
 size_t obj_size (int ) ;
 scalar_t__ unlikely (int) ;
 int virt_to_cache (void const*) ;

size_t ksize(const void *objp)
{
 BUG_ON(!objp);
 if (unlikely(objp == ZERO_SIZE_PTR))
  return 0;

 return obj_size(virt_to_cache(objp));
}
