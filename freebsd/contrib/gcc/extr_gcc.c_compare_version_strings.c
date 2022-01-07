
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regex_t ;


 int REG_EXTENDED ;
 int REG_NOMATCH ;
 int REG_NOSUB ;
 int abort () ;
 int fatal (char*,char const*) ;
 scalar_t__ regcomp (int *,char*,int) ;
 int regexec (int *,char const*,int ,int *,int ) ;
 int strverscmp (char const*,char const*) ;

__attribute__((used)) static int
compare_version_strings (const char *v1, const char *v2)
{
  int rresult;
  regex_t r;

  if (regcomp (&r, "^([1-9][0-9]*|0)(\\.([1-9][0-9]*|0))*$",
        REG_EXTENDED | REG_NOSUB) != 0)
    abort ();
  rresult = regexec (&r, v1, 0, ((void*)0), 0);
  if (rresult == REG_NOMATCH)
    fatal ("invalid version number `%s'", v1);
  else if (rresult != 0)
    abort ();
  rresult = regexec (&r, v2, 0, ((void*)0), 0);
  if (rresult == REG_NOMATCH)
    fatal ("invalid version number `%s'", v2);
  else if (rresult != 0)
    abort ();

  return strverscmp (v1, v2);
}
