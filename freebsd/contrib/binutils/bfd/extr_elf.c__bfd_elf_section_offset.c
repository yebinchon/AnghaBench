
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct bfd_link_info {int dummy; } ;
typedef int bfd_vma ;
typedef int bfd ;
struct TYPE_7__ {int sec_info_type; } ;
typedef TYPE_1__ asection ;
struct TYPE_8__ {int sec_info; } ;




 int _bfd_elf_eh_frame_section_offset (int *,struct bfd_link_info*,TYPE_1__*,int ) ;
 int _bfd_stab_section_offset (TYPE_1__*,int ,int ) ;
 TYPE_2__* elf_section_data (TYPE_1__*) ;

bfd_vma
_bfd_elf_section_offset (bfd *abfd,
    struct bfd_link_info *info,
    asection *sec,
    bfd_vma offset)
{
  switch (sec->sec_info_type)
    {
    case 128:
      return _bfd_stab_section_offset (sec, elf_section_data (sec)->sec_info,
           offset);
    case 129:
      return _bfd_elf_eh_frame_section_offset (abfd, info, sec, offset);
    default:
      return offset;
    }
}
