
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * the_bfd; int * section; } ;
struct TYPE_5__ {TYPE_2__ symbol; int * native; int local; int * fdr; } ;
typedef TYPE_1__ ecoff_symbol_type ;
typedef int bfd_size_type ;
typedef int bfd ;
typedef TYPE_2__ asymbol ;


 int FALSE ;
 TYPE_1__* bfd_zalloc (int *,int) ;

asymbol *
_bfd_ecoff_make_empty_symbol (bfd *abfd)
{
  ecoff_symbol_type *new;
  bfd_size_type amt = sizeof (ecoff_symbol_type);

  new = bfd_zalloc (abfd, amt);
  if (new == ((void*)0))
    return ((void*)0);
  new->symbol.section = ((void*)0);
  new->fdr = ((void*)0);
  new->local = FALSE;
  new->native = ((void*)0);
  new->symbol.the_bfd = abfd;
  return &new->symbol;
}
