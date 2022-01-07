
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int __GFP_HIGHMEM ;
 int __GFP_ZERO ;
 void* __vmalloc_node_flags (unsigned long,int,int) ;

void *vzalloc_node(unsigned long size, int node)
{
 return __vmalloc_node_flags(size, node,
    GFP_KERNEL | __GFP_HIGHMEM | __GFP_ZERO);
}
