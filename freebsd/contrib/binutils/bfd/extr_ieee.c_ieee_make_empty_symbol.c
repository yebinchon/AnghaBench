
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * the_bfd; } ;
struct TYPE_5__ {TYPE_2__ symbol; } ;
typedef TYPE_1__ ieee_symbol_type ;
typedef int bfd_size_type ;
typedef int bfd ;
typedef TYPE_2__ asymbol ;


 TYPE_1__* bfd_zalloc (int *,int) ;

__attribute__((used)) static asymbol *
ieee_make_empty_symbol (bfd *abfd)
{
  bfd_size_type amt = sizeof (ieee_symbol_type);
  ieee_symbol_type *new = bfd_zalloc (abfd, amt);

  if (!new)
    return ((void*)0);
  new->symbol.the_bfd = abfd;
  return &new->symbol;
}
