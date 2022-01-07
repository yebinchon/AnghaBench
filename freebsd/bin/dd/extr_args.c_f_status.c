
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C_NOINFO ;
 int C_NOXFER ;
 int C_PROGRESS ;
 int ddflags ;
 int errx (int,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
f_status(char *arg)
{

 if (strcmp(arg, "none") == 0)
  ddflags |= C_NOINFO;
 else if (strcmp(arg, "noxfer") == 0)
  ddflags |= C_NOXFER;
 else if (strcmp(arg, "progress") == 0)
  ddflags |= C_PROGRESS;
 else
  errx(1, "unknown status %s", arg);
}
