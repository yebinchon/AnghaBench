
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _score_elf_section_data {int dummy; } ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_4__ {struct _score_elf_section_data* used_by_bfd; } ;
typedef TYPE_1__ asection ;


 int FALSE ;
 int _bfd_elf_new_section_hook (int *,TYPE_1__*) ;
 struct _score_elf_section_data* bfd_zalloc (int *,int) ;

__attribute__((used)) static bfd_boolean
elf32_score_new_section_hook (bfd *abfd, asection *sec)
{
  struct _score_elf_section_data *sdata;
  bfd_size_type amt = sizeof (*sdata);

  sdata = bfd_zalloc (abfd, amt);
  if (sdata == ((void*)0))
    return FALSE;
  sec->used_by_bfd = sdata;

  return _bfd_elf_new_section_hook (abfd, sec);
}
