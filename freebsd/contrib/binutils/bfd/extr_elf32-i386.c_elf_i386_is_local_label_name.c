
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;
typedef int bfd ;


 int TRUE ;
 int _bfd_elf_is_local_label_name (int *,char const*) ;

__attribute__((used)) static bfd_boolean
elf_i386_is_local_label_name (bfd *abfd, const char *name)
{
  if (name[0] == '.' && name[1] == 'X')
    return TRUE;

  return _bfd_elf_is_local_label_name (abfd, name);
}
