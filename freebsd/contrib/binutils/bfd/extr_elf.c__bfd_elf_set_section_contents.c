
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sec_ptr ;
typedef scalar_t__ file_ptr ;
typedef scalar_t__ bfd_size_type ;
typedef scalar_t__ bfd_signed_vma ;
typedef int bfd_boolean ;
struct TYPE_8__ {int output_has_begun; } ;
typedef TYPE_1__ bfd ;
struct TYPE_9__ {scalar_t__ sh_offset; } ;
struct TYPE_10__ {TYPE_2__ this_hdr; } ;
typedef TYPE_2__ Elf_Internal_Shdr ;


 int FALSE ;
 int SEEK_SET ;
 int TRUE ;
 int _bfd_elf_compute_section_file_positions (TYPE_1__*,int *) ;
 scalar_t__ bfd_bwrite (void const*,scalar_t__,TYPE_1__*) ;
 scalar_t__ bfd_seek (TYPE_1__*,scalar_t__,int ) ;
 TYPE_3__* elf_section_data (int ) ;

bfd_boolean
_bfd_elf_set_section_contents (bfd *abfd,
          sec_ptr section,
          const void *location,
          file_ptr offset,
          bfd_size_type count)
{
  Elf_Internal_Shdr *hdr;
  bfd_signed_vma pos;

  if (! abfd->output_has_begun
      && ! _bfd_elf_compute_section_file_positions (abfd, ((void*)0)))
    return FALSE;

  hdr = &elf_section_data (section)->this_hdr;
  pos = hdr->sh_offset + offset;
  if (bfd_seek (abfd, pos, SEEK_SET) != 0
      || bfd_bwrite (location, count, abfd) != count)
    return FALSE;

  return TRUE;
}
