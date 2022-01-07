
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mf_flags; scalar_t__ mf_private; int mf_mount; } ;
typedef TYPE_1__ mntfs ;
typedef int cmd ;
typedef int am_node ;


 int AMU_UMOUNT_AUTOFS ;
 int MFF_ON_AUTOFS ;
 int UMOUNT_FS (int ,int ,int) ;
 int XLOG_INFO ;
 int mnttab_file_name ;
 int plog (int ,char*,char*) ;
 int system (char*) ;
 int xsnprintf (char*,int,char*,char*) ;

__attribute__((used)) static int
cachefs_umount(am_node *am, mntfs *mf)
{
  int unmount_flags = (mf->mf_flags & MFF_ON_AUTOFS) ? AMU_UMOUNT_AUTOFS : 0;
  int error;

  error = UMOUNT_FS(mf->mf_mount, mnttab_file_name, unmount_flags);
  if (!error) {
    char *cachedir = ((void*)0);
    char cmd[128];

    cachedir = (char *) mf->mf_private;
    plog(XLOG_INFO, "running fsck on cache directory \"%s\"", cachedir);
    xsnprintf(cmd, sizeof(cmd), "fsck -F cachefs %s", cachedir);
    system(cmd);
  }

  return error;
}
