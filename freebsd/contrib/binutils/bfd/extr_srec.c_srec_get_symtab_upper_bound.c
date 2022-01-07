
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;
typedef int asymbol ;


 int bfd_get_symcount (int *) ;

__attribute__((used)) static long
srec_get_symtab_upper_bound (bfd *abfd)
{
  return (bfd_get_symcount (abfd) + 1) * sizeof (asymbol *);
}
