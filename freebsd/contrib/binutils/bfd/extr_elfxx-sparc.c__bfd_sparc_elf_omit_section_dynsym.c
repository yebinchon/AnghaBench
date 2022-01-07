
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bfd_link_info {int dummy; } ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_4__ {int name; } ;
typedef TYPE_1__ asection ;


 int FALSE ;
 int _bfd_elf_link_omit_section_dynsym (int *,struct bfd_link_info*,TYPE_1__*) ;
 scalar_t__ strcmp (int ,char*) ;

bfd_boolean
_bfd_sparc_elf_omit_section_dynsym (bfd *output_bfd,
        struct bfd_link_info *info,
        asection *p)
{



  if (strcmp (p->name, ".got") == 0)
    return FALSE;

  return _bfd_elf_link_omit_section_dynsym (output_bfd, info, p);
}
