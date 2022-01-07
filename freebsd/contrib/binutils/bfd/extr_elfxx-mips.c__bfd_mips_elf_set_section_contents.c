
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct bfd_elf_section_data {int dummy; } ;
typedef TYPE_2__* sec_ptr ;
typedef int file_ptr ;
typedef int bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_8__ {int * tdata; } ;
struct TYPE_10__ {TYPE_1__ u; } ;
struct TYPE_9__ {int size; void* used_by_bfd; int name; } ;


 int FALSE ;
 scalar_t__ MIPS_ELF_OPTIONS_SECTION_NAME_P (int ) ;
 int _bfd_elf_set_section_contents (int *,TYPE_2__*,void const*,int,int) ;
 void* bfd_zalloc (int *,int) ;
 int * elf_section_data (TYPE_2__*) ;
 int memcpy (int *,void const*,int) ;
 TYPE_3__* mips_elf_section_data (TYPE_2__*) ;

bfd_boolean
_bfd_mips_elf_set_section_contents (bfd *abfd, sec_ptr section,
        const void *location,
        file_ptr offset, bfd_size_type count)
{
  if (MIPS_ELF_OPTIONS_SECTION_NAME_P (section->name))
    {
      bfd_byte *c;

      if (elf_section_data (section) == ((void*)0))
 {
   bfd_size_type amt = sizeof (struct bfd_elf_section_data);
   section->used_by_bfd = bfd_zalloc (abfd, amt);
   if (elf_section_data (section) == ((void*)0))
     return FALSE;
 }
      c = mips_elf_section_data (section)->u.tdata;
      if (c == ((void*)0))
 {
   c = bfd_zalloc (abfd, section->size);
   if (c == ((void*)0))
     return FALSE;
   mips_elf_section_data (section)->u.tdata = c;
 }

      memcpy (c + offset, location, count);
    }

  return _bfd_elf_set_section_contents (abfd, section, location, offset,
     count);
}
