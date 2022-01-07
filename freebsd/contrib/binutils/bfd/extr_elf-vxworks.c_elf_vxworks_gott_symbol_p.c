
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 char bfd_get_symbol_leading_char (int *) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static bfd_boolean
elf_vxworks_gott_symbol_p (bfd *abfd, const char *name)
{
  char leading;

  leading = bfd_get_symbol_leading_char (abfd);
  if (leading)
    {
      if (*name != leading)
 return FALSE;
      name++;
    }
  return (strcmp (name, "__GOTT_BASE__") == 0
   || strcmp (name, "__GOTT_INDEX__") == 0);
}
