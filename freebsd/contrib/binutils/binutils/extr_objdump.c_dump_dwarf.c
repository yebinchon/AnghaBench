
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; } ;
typedef TYPE_1__ bfd ;


 int DYNAMIC ;
 int EXEC_P ;
 int HAS_RELOC ;
 int abort () ;
 scalar_t__ bfd_big_endian (TYPE_1__*) ;
 int bfd_get_arch_size (TYPE_1__*) ;
 scalar_t__ bfd_little_endian (TYPE_1__*) ;
 int bfd_map_over_sections (TYPE_1__*,int ,int *) ;
 int byte_get ;
 int byte_get_big_endian ;
 int byte_get_little_endian ;
 int check_mach_o_dwarf (TYPE_1__*) ;
 int dump_dwarf_section ;
 int eh_addr_size ;
 int free_debug_memory () ;
 int is_relocatable ;

__attribute__((used)) static void
dump_dwarf (bfd *abfd)
{
  is_relocatable = ((abfd->flags & (HAS_RELOC | EXEC_P | DYNAMIC))
      == HAS_RELOC);



  eh_addr_size = bfd_get_arch_size (abfd) == 64 ? 8 : 4;

  if (bfd_big_endian (abfd))
    byte_get = byte_get_big_endian;
  else if (bfd_little_endian (abfd))
    byte_get = byte_get_little_endian;
  else
    abort ();

  check_mach_o_dwarf (abfd);

  bfd_map_over_sections (abfd, dump_dwarf_section, ((void*)0));

  free_debug_memory ();
}
