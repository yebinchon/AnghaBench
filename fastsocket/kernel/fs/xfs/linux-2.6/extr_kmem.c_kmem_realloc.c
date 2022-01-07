
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_km_flags_t ;


 void* kmem_alloc (size_t,int ) ;
 int kmem_free (void const*) ;
 int memcpy (void*,void const*,size_t) ;

void *
kmem_realloc(const void *ptr, size_t newsize, size_t oldsize,
      xfs_km_flags_t flags)
{
 void *new;

 new = kmem_alloc(newsize, flags);
 if (ptr) {
  if (new)
   memcpy(new, ptr,
    ((oldsize < newsize) ? oldsize : newsize));
  kmem_free(ptr);
 }
 return new;
}
