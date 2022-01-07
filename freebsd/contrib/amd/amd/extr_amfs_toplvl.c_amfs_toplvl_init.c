
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mf_mount; } ;
typedef TYPE_1__ mntfs ;
struct TYPE_5__ {int flags; } ;


 int AMU_UMOUNT_DETACH ;
 int AMU_UMOUNT_FORCE ;
 int CFM_FORCED_UNMOUNTS ;
 int XLOG_INFO ;
 int dlog (char*) ;
 TYPE_2__ gopt ;
 int plog (int ,char*,...) ;
 int umount2_fs (int ,int) ;

__attribute__((used)) static int
amfs_toplvl_init(mntfs *mf)
{
  int error = 0;
  return error;
}
