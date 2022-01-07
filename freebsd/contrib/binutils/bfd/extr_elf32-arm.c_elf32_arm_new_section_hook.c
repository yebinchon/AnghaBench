
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_5__ {int * used_by_bfd; } ;
typedef TYPE_1__ asection ;
typedef int _arm_elf_section_data ;


 int FALSE ;
 int _bfd_elf_new_section_hook (int *,TYPE_1__*) ;
 int * bfd_zalloc (int *,int) ;
 int record_section_with_arm_elf_section_data (TYPE_1__*) ;

__attribute__((used)) static bfd_boolean
elf32_arm_new_section_hook (bfd *abfd, asection *sec)
{
  if (!sec->used_by_bfd)
    {
      _arm_elf_section_data *sdata;
      bfd_size_type amt = sizeof (*sdata);

      sdata = bfd_zalloc (abfd, amt);
      if (sdata == ((void*)0))
 return FALSE;
      sec->used_by_bfd = sdata;
    }

  record_section_with_arm_elf_section_data (sec);

  return _bfd_elf_new_section_hook (abfd, sec);
}
