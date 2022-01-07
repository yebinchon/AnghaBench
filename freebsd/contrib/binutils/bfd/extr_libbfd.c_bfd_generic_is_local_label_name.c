
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;
typedef int bfd ;


 char bfd_get_symbol_leading_char (int *) ;

bfd_boolean
bfd_generic_is_local_label_name (bfd *abfd, const char *name)
{
  char locals_prefix = (bfd_get_symbol_leading_char (abfd) == '_') ? 'L' : '.';

  return name[0] == locals_prefix;
}
