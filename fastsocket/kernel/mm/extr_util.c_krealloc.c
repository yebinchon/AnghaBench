
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 void* ZERO_SIZE_PTR ;
 void* __krealloc (void const*,size_t,int ) ;
 int kfree (void const*) ;
 scalar_t__ unlikely (int) ;

void *krealloc(const void *p, size_t new_size, gfp_t flags)
{
 void *ret;

 if (unlikely(!new_size)) {
  kfree(p);
  return ZERO_SIZE_PTR;
 }

 ret = __krealloc(p, new_size, flags);
 if (ret && p != ret)
  kfree(p);

 return ret;
}
