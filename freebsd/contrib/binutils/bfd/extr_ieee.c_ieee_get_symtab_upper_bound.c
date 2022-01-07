
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ieee_symbol_type ;
struct TYPE_4__ {int symcount; } ;
typedef TYPE_1__ bfd ;


 int ieee_slurp_symbol_table (TYPE_1__*) ;

__attribute__((used)) static long
ieee_get_symtab_upper_bound (bfd *abfd)
{
  if (! ieee_slurp_symbol_table (abfd))
    return -1;

  return (abfd->symcount != 0) ?
    (abfd->symcount + 1) * (sizeof (ieee_symbol_type *)) : 0;
}
