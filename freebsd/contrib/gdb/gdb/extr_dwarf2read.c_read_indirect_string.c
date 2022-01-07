
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comp_unit_head {int dummy; } ;
typedef int bfd ;
typedef size_t LONGEST ;


 int HOST_CHAR_BIT ;
 int bfd_get_filename (int *) ;
 char* dwarf_str_buffer ;
 size_t dwarf_str_size ;
 int error (char*,int ) ;
 int gdb_assert (int) ;
 size_t read_offset (int *,char*,struct comp_unit_head const*,int*) ;

__attribute__((used)) static char *
read_indirect_string (bfd *abfd, char *buf,
        const struct comp_unit_head *cu_header,
        unsigned int *bytes_read_ptr)
{
  LONGEST str_offset = read_offset (abfd, buf, cu_header,
        (int *) bytes_read_ptr);

  if (dwarf_str_buffer == ((void*)0))
    {
      error ("DW_FORM_strp used without .debug_str section [in module %s]",
        bfd_get_filename (abfd));
      return ((void*)0);
    }
  if (str_offset >= dwarf_str_size)
    {
      error ("DW_FORM_strp pointing outside of .debug_str section [in module %s]",
        bfd_get_filename (abfd));
      return ((void*)0);
    }
  gdb_assert (HOST_CHAR_BIT == 8);
  if (dwarf_str_buffer[str_offset] == '\0')
    return ((void*)0);
  return dwarf_str_buffer + str_offset;
}
