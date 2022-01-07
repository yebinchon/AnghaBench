
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void const* _fdt_offset_ptr (void const*,int) ;
 int fdt_off_dt_struct (void const*) ;
 int fdt_size_dt_struct (void const*) ;
 unsigned int fdt_totalsize (void const*) ;
 int fdt_version (void const*) ;

const void *fdt_offset_ptr(const void *fdt, int offset, unsigned int len)
{
 unsigned absoffset = offset + fdt_off_dt_struct(fdt);

 if ((absoffset < offset)
     || ((absoffset + len) < absoffset)
     || (absoffset + len) > fdt_totalsize(fdt))
  return ((void*)0);

 if (fdt_version(fdt) >= 0x11)
  if (((offset + len) < offset)
      || ((offset + len) > fdt_size_dt_struct(fdt)))
   return ((void*)0);

 return _fdt_offset_ptr(fdt, offset);
}
