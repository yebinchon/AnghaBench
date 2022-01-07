
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ia64_dependency_mode { ____Placeholder_ia64_dependency_mode } ia64_dependency_mode ;
typedef int buf ;
typedef int FILE ;


 int IA64_DVS_OTHER ;
 int IA64_DV_WAW ;
 scalar_t__ ISSPACE (char) ;
 int _ (char*) ;
 int abort () ;
 int add_dep (char*,char*,char*,int,int,char*,int) ;
 int fail (int ,char const*) ;
 int fclose (int *) ;
 int feof (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int parse_semantics (char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
load_depfile (const char *filename, enum ia64_dependency_mode mode)
{
  FILE *fp = fopen (filename, "r");
  char buf[1024];

  if (fp == ((void*)0))
    fail (_("can't find %s for reading\n"), filename);

  fgets (buf, sizeof(buf), fp);
  while (!feof (fp))
    {
      char *name, *tmp;
      int semantics;
      char *extra;
      char *regp, *chkp;

      if (fgets (buf, sizeof(buf), fp) == ((void*)0))
        break;

      while (ISSPACE (buf[strlen (buf) - 1]))
        buf[strlen (buf) - 1] = '\0';

      name = tmp = buf;
      while (*tmp != ';')
        ++tmp;
      *tmp++ = '\0';

      while (ISSPACE (*tmp))
        ++tmp;
      regp = tmp;
      tmp = strchr (tmp, ';');
      if (!tmp)
        abort ();
      *tmp++ = 0;
      while (ISSPACE (*tmp))
        ++tmp;
      chkp = tmp;
      tmp = strchr (tmp, ';');
      if (!tmp)
        abort ();
      *tmp++ = 0;
      while (ISSPACE (*tmp))
        ++tmp;
      semantics = parse_semantics (tmp);
      extra = semantics == IA64_DVS_OTHER ? xstrdup (tmp) : ((void*)0);




      if (mode == IA64_DV_WAW && strcmp (regp, chkp) != 0)
        {
          add_dep (name, chkp, regp, semantics, mode, extra, 0);
          add_dep (name, regp, chkp, semantics, mode, extra, 1);
        }
      else
        {
          add_dep (name, chkp, regp, semantics, mode, extra, 0);
        }
    }
  fclose (fp);
}
