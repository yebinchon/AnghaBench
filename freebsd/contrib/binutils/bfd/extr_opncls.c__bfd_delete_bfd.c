
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct objalloc {int dummy; } ;
struct TYPE_4__ {scalar_t__ memory; int section_htab; } ;
typedef TYPE_1__ bfd ;


 int bfd_hash_table_free (int *) ;
 int free (TYPE_1__*) ;
 int objalloc_free (struct objalloc*) ;

void
_bfd_delete_bfd (bfd *abfd)
{
  if (abfd->memory)
    {
      bfd_hash_table_free (&abfd->section_htab);
      objalloc_free ((struct objalloc *) abfd->memory);
    }
  free (abfd);
}
