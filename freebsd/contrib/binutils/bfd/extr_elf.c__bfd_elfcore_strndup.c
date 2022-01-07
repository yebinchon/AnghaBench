
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 char* bfd_alloc (int *,size_t) ;
 char* memchr (char*,char,size_t) ;
 int memcpy (char*,char*,size_t) ;

char *
_bfd_elfcore_strndup (bfd *abfd, char *start, size_t max)
{
  char *dups;
  char *end = memchr (start, '\0', max);
  size_t len;

  if (end == ((void*)0))
    len = max;
  else
    len = end - start;

  dups = bfd_alloc (abfd, len + 1);
  if (dups == ((void*)0))
    return ((void*)0);

  memcpy (dups, start, len);
  dups[len] = '\0';

  return dups;
}
