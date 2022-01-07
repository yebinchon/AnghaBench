
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _fdt_check_prop_offset (void const*,int) ;
 int _nextprop (void const*,int) ;

int fdt_next_property_offset(const void *fdt, int offset)
{
 if ((offset = _fdt_check_prop_offset(fdt, offset)) < 0)
  return offset;

 return _nextprop(fdt, offset);
}
