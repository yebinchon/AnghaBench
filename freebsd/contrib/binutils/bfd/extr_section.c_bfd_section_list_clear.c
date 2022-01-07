
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bfd_hash_entry {int dummy; } ;
struct TYPE_4__ {int size; int table; } ;
struct TYPE_5__ {TYPE_1__ section_htab; scalar_t__ section_count; int * section_last; int * sections; } ;
typedef TYPE_2__ bfd ;


 int memset (int ,int ,int) ;

void
bfd_section_list_clear (bfd *abfd)
{
  abfd->sections = ((void*)0);
  abfd->section_last = ((void*)0);
  abfd->section_count = 0;
  memset (abfd->section_htab.table, 0,
   abfd->section_htab.size * sizeof (struct bfd_hash_entry *));
}
