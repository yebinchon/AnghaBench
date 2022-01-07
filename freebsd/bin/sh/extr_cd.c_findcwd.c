
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STACKSTRNUL (char*) ;
 int STARTSTACKSTR (char*) ;
 int STPUTC (char,char*) ;
 int STPUTS (char*,char*) ;
 char STTOPC (char*) ;
 char STUNPUTC (char*) ;
 char* curdir ;
 scalar_t__ equal (char*,char*) ;
 char* getcomponent (char**) ;
 char* getpwd2 () ;
 char* stackblock () ;
 char* stsavestr (char*) ;

__attribute__((used)) static char *
findcwd(char *dir)
{
 char *new;
 char *p;
 char *path;






 if (dir == ((void*)0) || curdir == ((void*)0))
  return getpwd2();
 path = stsavestr(dir);
 STARTSTACKSTR(new);
 if (*dir != '/') {
  STPUTS(curdir, new);
  if (STTOPC(new) == '/')
   STUNPUTC(new);
 }
 while ((p = getcomponent(&path)) != ((void*)0)) {
  if (equal(p, "..")) {
   while (new > stackblock() && (STUNPUTC(new), *new) != '/');
  } else if (*p != '\0' && ! equal(p, ".")) {
   STPUTC('/', new);
   STPUTS(p, new);
  }
 }
 if (new == stackblock())
  STPUTC('/', new);
 STACKSTRNUL(new);
 return stackblock();
}
