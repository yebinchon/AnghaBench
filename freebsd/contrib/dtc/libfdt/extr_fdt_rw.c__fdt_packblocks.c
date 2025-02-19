
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_header {int dummy; } ;


 int FDT_ALIGN (int,int) ;
 int fdt_off_dt_strings (char const*) ;
 int fdt_off_dt_struct (char const*) ;
 int fdt_off_mem_rsvmap (char const*) ;
 int fdt_set_off_dt_strings (char*,int) ;
 int fdt_set_off_dt_struct (char*,int) ;
 int fdt_set_off_mem_rsvmap (char*,int) ;
 int fdt_set_size_dt_strings (char*,int) ;
 int fdt_set_size_dt_struct (char*,int) ;
 int fdt_size_dt_strings (char const*) ;
 int memmove (char*,char const*,int) ;

__attribute__((used)) static void _fdt_packblocks(const char *old, char *new,
       int mem_rsv_size, int struct_size)
{
 int mem_rsv_off, struct_off, strings_off;

 mem_rsv_off = FDT_ALIGN(sizeof(struct fdt_header), 8);
 struct_off = mem_rsv_off + mem_rsv_size;
 strings_off = struct_off + struct_size;

 memmove(new + mem_rsv_off, old + fdt_off_mem_rsvmap(old), mem_rsv_size);
 fdt_set_off_mem_rsvmap(new, mem_rsv_off);

 memmove(new + struct_off, old + fdt_off_dt_struct(old), struct_size);
 fdt_set_off_dt_struct(new, struct_off);
 fdt_set_size_dt_struct(new, struct_size);

 memmove(new + strings_off, old + fdt_off_dt_strings(old),
  fdt_size_dt_strings(old));
 fdt_set_off_dt_strings(new, strings_off);
 fdt_set_size_dt_strings(new, fdt_size_dt_strings(old));
}
