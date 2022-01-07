
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* curdir ;
 char* getpwd2 () ;
 char* savestr (char*) ;

__attribute__((used)) static char *
getpwd(void)
{
 char *p;

 if (curdir)
  return curdir;

 p = getpwd2();
 if (p != ((void*)0))
  curdir = savestr(p);

 return curdir;
}
