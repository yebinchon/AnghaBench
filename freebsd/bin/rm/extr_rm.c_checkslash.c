
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISSLASH (char*) ;
 int eval ;
 int warnx (char*) ;

__attribute__((used)) static void
checkslash(char **argv)
{
 char **t, **u;
 int complained;

 complained = 0;
 for (t = argv; *t;) {
  if (ISSLASH(*t)) {
   if (!complained++)
    warnx("\"/\" may not be removed");
   eval = 1;
   for (u = t; u[0] != ((void*)0); ++u)
    u[0] = u[1];
  } else {
   ++t;
  }
 }
}
