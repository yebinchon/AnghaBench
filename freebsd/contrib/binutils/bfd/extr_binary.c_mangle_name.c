
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_size_type ;
typedef int bfd ;


 int ISALNUM (char) ;
 char* bfd_alloc (int *,int) ;
 char* bfd_get_filename (int *) ;
 int sprintf (char*,char*,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static char *
mangle_name (bfd *abfd, char *suffix)
{
  bfd_size_type size;
  char *buf;
  char *p;

  size = (strlen (bfd_get_filename (abfd))
   + strlen (suffix)
   + sizeof "_binary__");

  buf = bfd_alloc (abfd, size);
  if (buf == ((void*)0))
    return "";

  sprintf (buf, "_binary_%s_%s", bfd_get_filename (abfd), suffix);


  for (p = buf; *p; p++)
    if (! ISALNUM (*p))
      *p = '_';

  return buf;
}
