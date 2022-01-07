
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mf_flags; } ;
typedef TYPE_1__ mntfs ;
struct TYPE_6__ {int am_path; } ;
typedef TYPE_2__ am_node ;


 int AMU_UMOUNT_AUTOFS ;
 int MFF_IS_AUTOFS ;
 int MFF_ON_AUTOFS ;
 int UMOUNT_FS (int ,int ,int) ;
 int mnttab_file_name ;

int
amfs_generic_umount(am_node *mp, mntfs *mf)
{
  int error = 0;







  return error;
}
