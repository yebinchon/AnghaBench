
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ symindex ;
typedef int carsym ;
typedef int bfd ;
struct TYPE_2__ {scalar_t__ symdef_count; int * symdefs; } ;


 scalar_t__ BFD_NO_MORE_SYMBOLS ;
 TYPE_1__* bfd_ardata (int *) ;
 int bfd_error_invalid_operation ;
 int bfd_has_map (int *) ;
 int bfd_set_error (int ) ;

symindex
bfd_get_next_mapent (bfd *abfd, symindex prev, carsym **entry)
{
  if (!bfd_has_map (abfd))
    {
      bfd_set_error (bfd_error_invalid_operation);
      return BFD_NO_MORE_SYMBOLS;
    }

  if (prev == BFD_NO_MORE_SYMBOLS)
    prev = 0;
  else
    ++prev;
  if (prev >= bfd_ardata (abfd)->symdef_count)
    return BFD_NO_MORE_SYMBOLS;

  *entry = (bfd_ardata (abfd)->symdefs + prev);
  return prev;
}
