
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _fdt_check_node_offset (void const*,int) ;
 int _nextprop (void const*,int) ;

int fdt_first_property_offset(const void *fdt, int nodeoffset)
{
 int offset;

 if ((offset = _fdt_check_node_offset(fdt, nodeoffset)) < 0)
  return offset;

 return _nextprop(fdt, offset);
}
