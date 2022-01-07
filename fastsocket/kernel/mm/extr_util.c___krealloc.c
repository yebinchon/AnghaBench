
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 void* ZERO_SIZE_PTR ;
 void* kmalloc_track_caller (size_t,int ) ;
 size_t ksize (void const*) ;
 int memcpy (void*,void const*,size_t) ;
 scalar_t__ unlikely (int) ;

void *__krealloc(const void *p, size_t new_size, gfp_t flags)
{
 void *ret;
 size_t ks = 0;

 if (unlikely(!new_size))
  return ZERO_SIZE_PTR;

 if (p)
  ks = ksize(p);

 if (ks >= new_size)
  return (void *)p;

 ret = kmalloc_track_caller(new_size, flags);
 if (ret && p)
  memcpy(ret, p, ks);

 return ret;
}
