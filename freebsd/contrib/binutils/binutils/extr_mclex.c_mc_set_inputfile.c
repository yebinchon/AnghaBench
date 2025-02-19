
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* input_filename ;
 char* strrchr (char const*,char) ;
 char* xstrdup (char const*) ;

void
mc_set_inputfile (const char *name)
{
  if (! name || *name == 0)
    input_filename = "-";
  else
    {
      const char *s1 = strrchr (name, '/');
      const char *s2 = strrchr (name, '\\');

      if (! s1)
 s1 = s2;
      if (s1 && s2 && s1 < s2)
 s1 = s2;
      if (! s1)
 s1 = name;
      else
 s1++;
      s1 = xstrdup (s1);
      input_filename = s1;
    }
}
