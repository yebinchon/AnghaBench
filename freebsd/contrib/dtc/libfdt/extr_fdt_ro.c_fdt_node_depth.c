
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_ERR_INTERNAL ;
 int fdt_supernode_atdepth_offset (void const*,int,int ,int*) ;

int fdt_node_depth(const void *fdt, int nodeoffset)
{
 int nodedepth;
 int err;

 err = fdt_supernode_atdepth_offset(fdt, nodeoffset, 0, &nodedepth);
 if (err)
  return (err < 0) ? err : -FDT_ERR_INTERNAL;
 return nodedepth;
}
