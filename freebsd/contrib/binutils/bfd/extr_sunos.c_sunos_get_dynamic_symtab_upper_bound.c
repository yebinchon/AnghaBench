
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunos_dynamic_info {int dynsym_count; int valid; } ;
typedef int bfd ;
typedef int asymbol ;


 int bfd_error_no_symbols ;
 int bfd_set_error (int ) ;
 scalar_t__ obj_aout_dynamic_info (int *) ;
 int sunos_read_dynamic_info (int *) ;

__attribute__((used)) static long
sunos_get_dynamic_symtab_upper_bound (bfd *abfd)
{
  struct sunos_dynamic_info *info;

  if (! sunos_read_dynamic_info (abfd))
    return -1;

  info = (struct sunos_dynamic_info *) obj_aout_dynamic_info (abfd);
  if (! info->valid)
    {
      bfd_set_error (bfd_error_no_symbols);
      return -1;
    }

  return (info->dynsym_count + 1) * sizeof (asymbol *);
}
