
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;


 int VEXPORT ;
 int ckfree (scalar_t__) ;
 scalar_t__ curdir ;
 int * getpwd () ;
 char* lookupvar (char*) ;
 int out2fmt_flush (char*) ;
 scalar_t__ savestr (char*) ;
 int setvar (char*,scalar_t__,int ) ;
 int stat (char*,struct stat*) ;

void
pwd_init(int warn)
{
 char *pwd;
 struct stat stdot, stpwd;

 pwd = lookupvar("PWD");
 if (pwd && *pwd == '/' && stat(".", &stdot) != -1 &&
     stat(pwd, &stpwd) != -1 &&
     stdot.st_dev == stpwd.st_dev &&
     stdot.st_ino == stpwd.st_ino) {
  if (curdir)
   ckfree(curdir);
  curdir = savestr(pwd);
 }
 if (getpwd() == ((void*)0) && warn)
  out2fmt_flush("sh: cannot determine working directory\n");
 setvar("PWD", curdir, VEXPORT);
}
