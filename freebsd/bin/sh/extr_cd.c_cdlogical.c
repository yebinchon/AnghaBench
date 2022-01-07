
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int INTOFF ;
 int INTON ;
 int STACKSTRNUL (char*) ;
 int STARTSTACKSTR (char*) ;
 int STPUTC (char,char*) ;
 int STPUTS (char*,char*) ;
 scalar_t__ chdir (char*) ;
 scalar_t__ equal (char*,char*) ;
 char* findcwd (char*) ;
 char* getcomponent (char**) ;
 scalar_t__ lstat (int ,struct stat*) ;
 int stackblock () ;
 char* stsavestr (char*) ;
 int updatepwd (char*) ;

__attribute__((used)) static int
cdlogical(char *dest)
{
 char *p;
 char *q;
 char *component;
 char *path;
 struct stat statb;
 int first;
 int badstat;






 badstat = 0;
 path = stsavestr(dest);
 STARTSTACKSTR(p);
 if (*dest == '/') {
  STPUTC('/', p);
  path++;
 }
 first = 1;
 while ((q = getcomponent(&path)) != ((void*)0)) {
  if (q[0] == '\0' || (q[0] == '.' && q[1] == '\0'))
   continue;
  if (! first)
   STPUTC('/', p);
  first = 0;
  component = q;
  STPUTS(q, p);
  if (equal(component, ".."))
   continue;
  STACKSTRNUL(p);
  if (lstat(stackblock(), &statb) < 0) {
   badstat = 1;
   break;
  }
 }

 INTOFF;
 if ((p = findcwd(badstat ? ((void*)0) : dest)) == ((void*)0) || chdir(p) < 0) {
  INTON;
  return (-1);
 }
 updatepwd(p);
 INTON;
 return (0);
}
