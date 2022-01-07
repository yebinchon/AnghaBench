
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct impl_files {char* filename; struct impl_files* next; } ;


 struct impl_files* impl_file_chain ;
 scalar_t__ strchr (char const*,char) ;

__attribute__((used)) static int
interface_strcmp (const char* s)
{

  struct impl_files *ifiles;
  const char *s1;

  for (ifiles = impl_file_chain; ifiles; ifiles = ifiles->next)
    {
      const char *t1 = ifiles->filename;
      s1 = s;

      if (*s1 != *t1 || *s1 == 0)
 continue;

      while (*s1 == *t1 && *s1 != 0)
 s1++, t1++;


      if (*s1 == *t1)
 return 0;


      if (strchr (s1, '.') || strchr (t1, '.'))
 continue;

      if (*s1 == '\0' || s1[-1] != '.' || t1[-1] != '.')
 continue;


      return 0;
    }


  return 1;
}
