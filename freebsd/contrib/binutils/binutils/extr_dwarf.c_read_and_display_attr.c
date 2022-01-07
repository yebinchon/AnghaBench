
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int debug_info ;


 char* get_AT_name (unsigned long) ;
 int printf (char*,...) ;
 unsigned char* read_and_display_attr_value (unsigned long,unsigned long,unsigned char*,unsigned long,unsigned long,unsigned long,int,int *,int) ;

__attribute__((used)) static unsigned char *
read_and_display_attr (unsigned long attribute,
         unsigned long form,
         unsigned char *data,
         unsigned long cu_offset,
         unsigned long pointer_size,
         unsigned long offset_size,
         int dwarf_version,
         debug_info *debug_info_p,
         int do_loc)
{
  if (!do_loc)
    printf ("     %-18s:", get_AT_name (attribute));
  data = read_and_display_attr_value (attribute, form, data, cu_offset,
          pointer_size, offset_size,
          dwarf_version, debug_info_p,
          do_loc);
  if (!do_loc)
    printf ("\n");
  return data;
}
