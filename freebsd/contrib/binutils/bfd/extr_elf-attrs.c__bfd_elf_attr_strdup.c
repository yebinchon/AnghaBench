
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 scalar_t__ bfd_alloc (int *,int) ;
 char* memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

char *
_bfd_elf_attr_strdup (bfd *abfd, const char * s)
{
  char * p;
  int len;

  len = strlen (s) + 1;
  p = (char *) bfd_alloc (abfd, len);
  return memcpy (p, s, len);
}
