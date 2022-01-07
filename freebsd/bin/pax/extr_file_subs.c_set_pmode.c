
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int ABITS ;
 int errno ;
 scalar_t__ lchmod (char*,int ) ;
 int syswarn (int,int ,char*,char*) ;

void
set_pmode(char *fnm, mode_t mode)
{
 mode &= ABITS;
 if (lchmod(fnm, mode) < 0)
  syswarn(1, errno, "Could not set permissions on %s", fnm);
 return;
}
