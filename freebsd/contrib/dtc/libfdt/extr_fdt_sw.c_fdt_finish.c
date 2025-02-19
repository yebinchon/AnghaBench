
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct fdt_property {void* nameoff; } ;
typedef void* fdt32_t ;


 scalar_t__ FDT_END ;
 int FDT_ERR_NOSPACE ;
 int FDT_MAGIC ;
 scalar_t__ FDT_PROP ;
 int FDT_SW_CHECK_HEADER (void*) ;
 void** _fdt_grab_space (void*,int) ;
 struct fdt_property* _fdt_offset_ptr_w (void*,int) ;
 void* cpu_to_fdt32 (int) ;
 int fdt32_to_cpu (void*) ;
 scalar_t__ fdt_next_tag (void*,int,int*) ;
 int fdt_off_dt_struct (void*) ;
 int fdt_set_magic (void*,int ) ;
 int fdt_set_off_dt_strings (void*,int) ;
 int fdt_set_totalsize (void*,int) ;
 int fdt_size_dt_strings (void*) ;
 int fdt_size_dt_struct (void*) ;
 int fdt_totalsize (void*) ;
 int memmove (char*,char*,int) ;

int fdt_finish(void *fdt)
{
 char *p = (char *)fdt;
 fdt32_t *end;
 int oldstroffset, newstroffset;
 uint32_t tag;
 int offset, nextoffset;

 FDT_SW_CHECK_HEADER(fdt);


 end = _fdt_grab_space(fdt, sizeof(*end));
 if (! end)
  return -FDT_ERR_NOSPACE;
 *end = cpu_to_fdt32(FDT_END);


 oldstroffset = fdt_totalsize(fdt) - fdt_size_dt_strings(fdt);
 newstroffset = fdt_off_dt_struct(fdt) + fdt_size_dt_struct(fdt);
 memmove(p + newstroffset, p + oldstroffset, fdt_size_dt_strings(fdt));
 fdt_set_off_dt_strings(fdt, newstroffset);


 offset = 0;
 while ((tag = fdt_next_tag(fdt, offset, &nextoffset)) != FDT_END) {
  if (tag == FDT_PROP) {
   struct fdt_property *prop =
    _fdt_offset_ptr_w(fdt, offset);
   int nameoff;

   nameoff = fdt32_to_cpu(prop->nameoff);
   nameoff += fdt_size_dt_strings(fdt);
   prop->nameoff = cpu_to_fdt32(nameoff);
  }
  offset = nextoffset;
 }
 if (nextoffset < 0)
  return nextoffset;


 fdt_set_totalsize(fdt, newstroffset + fdt_size_dt_strings(fdt));
 fdt_set_magic(fdt, FDT_MAGIC);
 return 0;
}
