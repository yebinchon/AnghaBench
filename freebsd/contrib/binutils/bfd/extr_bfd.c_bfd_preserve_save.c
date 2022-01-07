
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct section_hash_entry {int dummy; } ;
struct bfd_preserve {int section_htab; scalar_t__ section_count; int * section_last; int * sections; int flags; int * arch_info; int * tdata; } ;
typedef int bfd_boolean ;
struct TYPE_4__ {int * any; } ;
struct TYPE_5__ {scalar_t__ section_count; int * section_last; int * sections; int flags; int * arch_info; TYPE_1__ tdata; int section_htab; } ;
typedef TYPE_2__ bfd ;


 int BFD_IN_MEMORY ;
 int FALSE ;
 int TRUE ;
 int bfd_default_arch_struct ;
 int bfd_hash_table_init (int *,int ,int) ;
 int bfd_section_hash_newfunc ;

bfd_boolean
bfd_preserve_save (bfd *abfd, struct bfd_preserve *preserve)
{
  preserve->tdata = abfd->tdata.any;
  preserve->arch_info = abfd->arch_info;
  preserve->flags = abfd->flags;
  preserve->sections = abfd->sections;
  preserve->section_last = abfd->section_last;
  preserve->section_count = abfd->section_count;
  preserve->section_htab = abfd->section_htab;

  if (! bfd_hash_table_init (&abfd->section_htab, bfd_section_hash_newfunc,
        sizeof (struct section_hash_entry)))
    return FALSE;

  abfd->tdata.any = ((void*)0);
  abfd->arch_info = &bfd_default_arch_struct;
  abfd->flags &= BFD_IN_MEMORY;
  abfd->sections = ((void*)0);
  abfd->section_last = ((void*)0);
  abfd->section_count = 0;

  return TRUE;
}
