
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _fdt_node_end_offset (void*,int) ;
 int _fdt_nop_region (int ,int) ;
 int fdt_offset_ptr_w (void*,int,int ) ;

int fdt_nop_node(void *fdt, int nodeoffset)
{
 int endoffset;

 endoffset = _fdt_node_end_offset(fdt, nodeoffset);
 if (endoffset < 0)
  return endoffset;

 _fdt_nop_region(fdt_offset_ptr_w(fdt, nodeoffset, 0),
   endoffset - nodeoffset);
 return 0;
}
