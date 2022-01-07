
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int section_htab; } ;
typedef TYPE_1__ bfd ;


 int FALSE ;
 int abort () ;
 char* bfd_malloc (unsigned int) ;
 int memcpy (char*,char const*,unsigned int) ;
 scalar_t__ section_hash_lookup (int *,char*,int ,int ) ;
 int sprintf (char*,char*,int ) ;
 unsigned int strlen (char const*) ;

char *
bfd_get_unique_section_name (bfd *abfd, const char *templat, int *count)
{
  int num;
  unsigned int len;
  char *sname;

  len = strlen (templat);
  sname = bfd_malloc (len + 8);
  if (sname == ((void*)0))
    return ((void*)0);
  memcpy (sname, templat, len);
  num = 1;
  if (count != ((void*)0))
    num = *count;

  do
    {

      if (num > 999999)
 abort ();
      sprintf (sname + len, ".%d", num++);
    }
  while (section_hash_lookup (&abfd->section_htab, sname, FALSE, FALSE));

  if (count != ((void*)0))
    *count = num;
  return sname;
}
