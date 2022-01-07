
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_RW_CHECK_HEADER (void*) ;
 int _fdt_node_end_offset (void*,int) ;
 int _fdt_offset_ptr_w (void*,int) ;
 int _fdt_splice_struct (void*,int ,int,int ) ;

int fdt_del_node(void *fdt, int nodeoffset)
{
 int endoffset;

 FDT_RW_CHECK_HEADER(fdt);

 endoffset = _fdt_node_end_offset(fdt, nodeoffset);
 if (endoffset < 0)
  return endoffset;

 return _fdt_splice_struct(fdt, _fdt_offset_ptr_w(fdt, nodeoffset),
      endoffset - nodeoffset, 0);
}
