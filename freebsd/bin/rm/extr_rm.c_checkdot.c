
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISDOT (char*) ;
 int eval ;
 char* strrchr (char*,char) ;
 int warnx (char*) ;

__attribute__((used)) static void
checkdot(char **argv)
{
 char *p, **save, **t;
 int complained;

 complained = 0;
 for (t = argv; *t;) {
  if ((p = strrchr(*t, '/')) != ((void*)0))
   ++p;
  else
   p = *t;
  if (ISDOT(p)) {
   if (!complained++)
    warnx("\".\" and \"..\" may not be removed");
   eval = 1;
   for (save = t; (t[0] = t[1]) != ((void*)0); ++t)
    continue;
   t = save;
  } else
   ++t;
 }
}
