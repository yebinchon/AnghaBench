
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bfd_size_type ;
typedef int bfd ;


 char* bfd_alloc (int *,scalar_t__) ;
 int strncpy (char*,char*,size_t) ;

__attribute__((used)) static char *
copy_name (bfd *abfd, char *name, size_t maxlen)
{
  size_t len;
  char *newname;

  for (len = 0; len < maxlen; ++len)
    if (name[len] == '\0')
      break;

  if ((newname = bfd_alloc (abfd, (bfd_size_type) len + 1)) == ((void*)0))
    return ((void*)0);

  strncpy (newname, name, len);
  newname[len] = '\0';
  return newname;
}
