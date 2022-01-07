
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



 int FDT_END ;

 int FDT_TAGALIGN (int) ;
 int FDT_TAGSIZE ;
 int fdt32_to_cpu (int const) ;
 void* fdt_offset_ptr (void const*,int,int) ;

uint32_t fdt_next_tag(const void *fdt, int offset, int *nextoffset)
{
 const uint32_t *tagp, *lenp;
 uint32_t tag;
 const char *p;

 if (offset % FDT_TAGSIZE)
  return -1;

 tagp = fdt_offset_ptr(fdt, offset, FDT_TAGSIZE);
 if (! tagp)
  return FDT_END;
 tag = fdt32_to_cpu(*tagp);
 offset += FDT_TAGSIZE;

 switch (tag) {
 case 129:

  do {
   p = fdt_offset_ptr(fdt, offset++, 1);
  } while (p && (*p != '\0'));
  if (! p)
   return FDT_END;
  break;
 case 128:
  lenp = fdt_offset_ptr(fdt, offset, sizeof(*lenp));
  if (! lenp)
   return FDT_END;

  offset += 2*FDT_TAGSIZE + fdt32_to_cpu(*lenp);
  break;
 }

 if (nextoffset)
  *nextoffset = FDT_TAGALIGN(offset);

 return tag;
}
