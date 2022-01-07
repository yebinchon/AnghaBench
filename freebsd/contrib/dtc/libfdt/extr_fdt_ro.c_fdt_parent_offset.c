
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdt_node_depth (void const*,int) ;
 int fdt_supernode_atdepth_offset (void const*,int,int,int *) ;

int fdt_parent_offset(const void *fdt, int nodeoffset)
{
 int nodedepth = fdt_node_depth(fdt, nodeoffset);

 if (nodedepth < 0)
  return nodedepth;
 return fdt_supernode_atdepth_offset(fdt, nodeoffset,
         nodedepth - 1, ((void*)0));
}
