
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int dummy; } ;
struct inode {int dummy; } ;
typedef int __u64 ;
struct TYPE_2__ {struct the_nilfs* mi_nilfs; } ;


 int EBUSY ;
 int EINVAL ;

 TYPE_1__* NILFS_MDT (struct inode*) ;

 int nilfs_checkpoint_is_mounted (struct the_nilfs*,int ,int) ;
 int nilfs_cpfile_clear_snapshot (struct inode*,int ) ;
 int nilfs_cpfile_set_snapshot (struct inode*,int ) ;

int nilfs_cpfile_change_cpmode(struct inode *cpfile, __u64 cno, int mode)
{
 struct the_nilfs *nilfs;
 int ret;

 nilfs = NILFS_MDT(cpfile)->mi_nilfs;

 switch (mode) {
 case 129:






  if (nilfs_checkpoint_is_mounted(nilfs, cno, 1)) {




   ret = -EBUSY;
  } else
   ret = nilfs_cpfile_clear_snapshot(cpfile, cno);
  return ret;
 case 128:
  return nilfs_cpfile_set_snapshot(cpfile, cno);
 default:
  return -EINVAL;
 }
}
