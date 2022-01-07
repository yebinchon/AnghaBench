
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ecoff_symbol_type ;
typedef int bfd ;
struct TYPE_2__ {int debug_info; } ;


 int _bfd_ecoff_slurp_symbolic_info (int *,int *,int *) ;
 int bfd_get_symcount (int *) ;
 TYPE_1__* ecoff_data (int *) ;

long
_bfd_ecoff_get_symtab_upper_bound (bfd *abfd)
{
  if (! _bfd_ecoff_slurp_symbolic_info (abfd, ((void*)0),
     &ecoff_data (abfd)->debug_info))
    return -1;

  if (bfd_get_symcount (abfd) == 0)
    return 0;

  return (bfd_get_symcount (abfd) + 1) * (sizeof (ecoff_symbol_type *));
}
