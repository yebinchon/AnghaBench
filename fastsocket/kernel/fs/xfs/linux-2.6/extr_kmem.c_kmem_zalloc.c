
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_km_flags_t ;


 void* kmem_alloc (size_t,int ) ;
 int memset (char*,int ,int) ;

void *
kmem_zalloc(size_t size, xfs_km_flags_t flags)
{
 void *ptr;

 ptr = kmem_alloc(size, flags);
 if (ptr)
  memset((char *)ptr, 0, (int)size);
 return ptr;
}
