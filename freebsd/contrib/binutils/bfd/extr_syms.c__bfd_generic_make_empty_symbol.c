
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_size_type ;
typedef int bfd ;
struct TYPE_4__ {int * the_bfd; } ;
typedef TYPE_1__ asymbol ;


 TYPE_1__* bfd_zalloc (int *,int) ;

asymbol *
_bfd_generic_make_empty_symbol (bfd *abfd)
{
  bfd_size_type amt = sizeof (asymbol);
  asymbol *new = bfd_zalloc (abfd, amt);
  if (new)
    new->the_bfd = abfd;
  return new;
}
