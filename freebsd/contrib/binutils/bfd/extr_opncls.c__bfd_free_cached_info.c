
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct objalloc {int dummy; } ;
typedef int bfd_boolean ;
struct TYPE_4__ {int * any; } ;
struct TYPE_5__ {int * memory; int * usrdata; TYPE_1__ tdata; int * outsymbols; int * section_last; int * sections; int section_htab; } ;
typedef TYPE_2__ bfd ;


 int TRUE ;
 int bfd_hash_table_free (int *) ;
 int objalloc_free (struct objalloc*) ;

bfd_boolean
_bfd_free_cached_info (bfd *abfd)
{
  if (abfd->memory)
    {
      bfd_hash_table_free (&abfd->section_htab);
      objalloc_free ((struct objalloc *) abfd->memory);

      abfd->sections = ((void*)0);
      abfd->section_last = ((void*)0);
      abfd->outsymbols = ((void*)0);
      abfd->tdata.any = ((void*)0);
      abfd->usrdata = ((void*)0);
      abfd->memory = ((void*)0);
    }

  return TRUE;
}
