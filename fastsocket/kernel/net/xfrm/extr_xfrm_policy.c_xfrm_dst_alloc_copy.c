
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_ATOMIC ;
 void* kmalloc (int,int ) ;
 int memcpy (void*,void*,int) ;

__attribute__((used)) static int inline
xfrm_dst_alloc_copy(void **target, void *src, int size)
{
 if (!*target) {
  *target = kmalloc(size, GFP_ATOMIC);
  if (!*target)
   return -ENOMEM;
 }
 memcpy(*target, src, size);
 return 0;
}
