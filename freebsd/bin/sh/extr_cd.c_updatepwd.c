
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VEXPORT ;
 int ckfree (char*) ;
 char* curdir ;
 int hashcd () ;
 char* savestr (char*) ;
 int setvar (char*,char*,int ) ;

__attribute__((used)) static void
updatepwd(char *dir)
{
 char *prevdir;

 hashcd();

 setvar("PWD", dir, VEXPORT);
 setvar("OLDPWD", curdir, VEXPORT);
 prevdir = curdir;
 curdir = dir ? savestr(dir) : ((void*)0);
 ckfree(prevdir);
}
