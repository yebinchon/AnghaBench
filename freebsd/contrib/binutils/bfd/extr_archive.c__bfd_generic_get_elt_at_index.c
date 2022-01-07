
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int symindex ;
struct TYPE_3__ {int file_offset; } ;
typedef TYPE_1__ carsym ;
typedef int bfd ;
struct TYPE_4__ {TYPE_1__* symdefs; } ;


 int * _bfd_get_elt_at_filepos (int *,int ) ;
 TYPE_2__* bfd_ardata (int *) ;

bfd *
_bfd_generic_get_elt_at_index (bfd *abfd, symindex index)
{
  carsym *entry;

  entry = bfd_ardata (abfd)->symdefs + index;
  return _bfd_get_elt_at_filepos (abfd, entry->file_offset);
}
