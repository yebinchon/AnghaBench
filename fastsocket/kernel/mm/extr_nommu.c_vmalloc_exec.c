
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int PAGE_KERNEL_EXEC ;
 int __GFP_HIGHMEM ;
 void* __vmalloc (unsigned long,int,int ) ;

void *vmalloc_exec(unsigned long size)
{
 return __vmalloc(size, GFP_KERNEL | __GFP_HIGHMEM, PAGE_KERNEL_EXEC);
}
