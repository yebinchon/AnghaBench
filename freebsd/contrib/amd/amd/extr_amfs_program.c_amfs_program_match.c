
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* opt_mount; scalar_t__ opt_unmount; int opt_fs; scalar_t__ opt_umount; } ;
typedef TYPE_1__ am_opts ;


 int UNMOUNT_PROGRAM ;
 int XLOG_ERROR ;
 int XLOG_INFO ;
 int plog (int ,char*,...) ;
 scalar_t__ str3cat (int *,int ,char*,int ) ;
 char* strchr (char*,char) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *
amfs_program_match(am_opts *fo)
{
  char *prog;

  if (fo->opt_unmount && fo->opt_umount) {
    plog(XLOG_ERROR, "program: cannot specify both unmount and umount options");
    return 0;
  }
  if (!fo->opt_mount) {
    plog(XLOG_ERROR, "program: must specify mount command");
    return 0;
  }
  if (!fo->opt_unmount && !fo->opt_umount) {
    fo->opt_unmount = str3cat(((void*)0), UNMOUNT_PROGRAM, " umount ", fo->opt_fs);
    plog(XLOG_INFO, "program: un/umount not specified; using default \"%s\"",
  fo->opt_unmount);
  }
  prog = strchr(fo->opt_mount, ' ');

  return xstrdup(prog ? prog + 1 : fo->opt_mount);
}
