
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * the_bfd; scalar_t__ section; } ;
struct TYPE_5__ {TYPE_2__ symbol; int done_lineno; int * lineno; scalar_t__ native; } ;
typedef TYPE_1__ coff_symbol_type ;
typedef int bfd_size_type ;
typedef int bfd ;
typedef TYPE_2__ asymbol ;


 int FALSE ;
 TYPE_1__* bfd_zalloc (int *,int) ;

asymbol *
coff_make_empty_symbol (bfd *abfd)
{
  bfd_size_type amt = sizeof (coff_symbol_type);
  coff_symbol_type *new = bfd_zalloc (abfd, amt);

  if (new == ((void*)0))
    return ((void*)0);
  new->symbol.section = 0;
  new->native = 0;
  new->lineno = ((void*)0);
  new->done_lineno = FALSE;
  new->symbol.the_bfd = abfd;

  return & new->symbol;
}
