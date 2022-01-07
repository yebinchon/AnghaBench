
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lun {scalar_t__ ro; struct file* filp; } ;
struct TYPE_2__ {int dentry; } ;
struct file {TYPE_1__ f_path; } ;


 int vfs_fsync (struct file*,int ,int) ;

__attribute__((used)) static int fsync_sub(struct lun *curlun)
{
 struct file *filp = curlun->filp;

 if (curlun->ro || !filp)
  return 0;
 return vfs_fsync(filp, filp->f_path.dentry, 1);
}
