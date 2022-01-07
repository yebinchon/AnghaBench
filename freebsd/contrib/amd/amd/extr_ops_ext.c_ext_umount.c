
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mf_flags; int mf_mount; } ;
typedef TYPE_1__ mntfs ;
typedef int am_node ;


 int AMU_UMOUNT_AUTOFS ;
 int MFF_ON_AUTOFS ;
 int UMOUNT_FS (int ,int ,int) ;
 int mnttab_file_name ;

__attribute__((used)) static int
ext_umount(am_node *am, mntfs *mf)
{
  int unmount_flags = (mf->mf_flags & MFF_ON_AUTOFS) ? AMU_UMOUNT_AUTOFS : 0;

  return UMOUNT_FS(mf->mf_mount, mnttab_file_name, unmount_flags);
}
