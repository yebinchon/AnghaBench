
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERANGE ;
 int MAXPWD ;
 scalar_t__ errno ;
 int * getcwd (char*,int) ;
 char* stalloc (int) ;
 int stunalloc (char*) ;

__attribute__((used)) static char *
getpwd2(void)
{
 char *pwd;
 int i;

 for (i = MAXPWD;; i *= 2) {
  pwd = stalloc(i);
  if (getcwd(pwd, i) != ((void*)0))
   return pwd;
  stunalloc(pwd);
  if (errno != ERANGE)
   break;
 }

 return ((void*)0);
}
