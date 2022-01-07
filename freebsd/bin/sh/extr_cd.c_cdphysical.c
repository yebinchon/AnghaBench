
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTOFF ;
 int INTON ;
 scalar_t__ chdir (char*) ;
 char* findcwd (int *) ;
 int updatepwd (char*) ;
 int warning (char*) ;

__attribute__((used)) static int
cdphysical(char *dest)
{
 char *p;
 int rc = 0;

 INTOFF;
 if (chdir(dest) < 0) {
  INTON;
  return (-1);
 }
 p = findcwd(((void*)0));
 if (p == ((void*)0)) {
  warning("warning: failed to get name of current directory");
  rc = 1;
 }
 updatepwd(p);
 INTON;
 return (rc);
}
