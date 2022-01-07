
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bfd_preserve {int * marker; int section_count; int section_last; int sections; int section_htab; int flags; int arch_info; int tdata; } ;
struct TYPE_5__ {int any; } ;
struct TYPE_6__ {int section_count; int section_last; int sections; int section_htab; int flags; int arch_info; TYPE_1__ tdata; } ;
typedef TYPE_2__ bfd ;


 int bfd_hash_table_free (int *) ;
 int bfd_release (TYPE_2__*,int *) ;

void
bfd_preserve_restore (bfd *abfd, struct bfd_preserve *preserve)
{
  bfd_hash_table_free (&abfd->section_htab);

  abfd->tdata.any = preserve->tdata;
  abfd->arch_info = preserve->arch_info;
  abfd->flags = preserve->flags;
  abfd->section_htab = preserve->section_htab;
  abfd->sections = preserve->sections;
  abfd->section_last = preserve->section_last;
  abfd->section_count = preserve->section_count;



  if (preserve->marker != ((void*)0))
    {
      bfd_release (abfd, preserve->marker);
      preserve->marker = ((void*)0);
    }
}
