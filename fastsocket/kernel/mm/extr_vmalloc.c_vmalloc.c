
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int __GFP_HIGHMEM ;
 void* __vmalloc_node_flags (unsigned long,int,int) ;

void *vmalloc(unsigned long size)
{
 return __vmalloc_node_flags(size, -1, GFP_KERNEL | __GFP_HIGHMEM);
}
