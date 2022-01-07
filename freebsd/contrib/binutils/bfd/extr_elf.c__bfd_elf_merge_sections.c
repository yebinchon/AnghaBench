
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct bfd_link_info {TYPE_1__* input_bfds; int hash; } ;
struct bfd_elf_section_data {scalar_t__ sec_info; } ;
typedef int bfd_boolean ;
struct TYPE_9__ {int flags; TYPE_2__* sections; struct TYPE_9__* link_next; } ;
typedef TYPE_1__ bfd ;
struct TYPE_10__ {int flags; int sec_info_type; int output_section; struct TYPE_10__* next; } ;
typedef TYPE_2__ asection ;
struct TYPE_11__ {int * merge_info; } ;


 int DYNAMIC ;
 int ELF_INFO_TYPE_MERGE ;
 int FALSE ;
 int SEC_MERGE ;
 int TRUE ;
 int _bfd_add_merge_section (TYPE_1__*,int **,TYPE_2__*,scalar_t__*) ;
 int _bfd_merge_sections (TYPE_1__*,struct bfd_link_info*,int *,int ) ;
 int bfd_is_abs_section (int ) ;
 TYPE_4__* elf_hash_table (struct bfd_link_info*) ;
 struct bfd_elf_section_data* elf_section_data (TYPE_2__*) ;
 int is_elf_hash_table (int ) ;
 int merge_sections_remove_hook ;

bfd_boolean
_bfd_elf_merge_sections (bfd *abfd, struct bfd_link_info *info)
{
  bfd *ibfd;
  asection *sec;

  if (!is_elf_hash_table (info->hash))
    return FALSE;

  for (ibfd = info->input_bfds; ibfd != ((void*)0); ibfd = ibfd->link_next)
    if ((ibfd->flags & DYNAMIC) == 0)
      for (sec = ibfd->sections; sec != ((void*)0); sec = sec->next)
 if ((sec->flags & SEC_MERGE) != 0
     && !bfd_is_abs_section (sec->output_section))
   {
     struct bfd_elf_section_data *secdata;

     secdata = elf_section_data (sec);
     if (! _bfd_add_merge_section (abfd,
       &elf_hash_table (info)->merge_info,
       sec, &secdata->sec_info))
       return FALSE;
     else if (secdata->sec_info)
       sec->sec_info_type = ELF_INFO_TYPE_MERGE;
   }

  if (elf_hash_table (info)->merge_info != ((void*)0))
    _bfd_merge_sections (abfd, info, elf_hash_table (info)->merge_info,
    merge_sections_remove_hook);
  return TRUE;
}
