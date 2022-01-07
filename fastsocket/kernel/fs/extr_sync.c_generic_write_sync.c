
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dentry; } ;
struct file {int f_flags; TYPE_2__ f_path; TYPE_1__* f_mapping; } ;
typedef scalar_t__ loff_t ;
struct TYPE_3__ {int host; } ;


 int IS_SYNC (int ) ;
 int O_SYNC ;
 int vfs_fsync_range (struct file*,int ,scalar_t__,scalar_t__,int) ;

int generic_write_sync(struct file *file, loff_t pos, loff_t count)
{
 if (!(file->f_flags & O_SYNC) && !IS_SYNC(file->f_mapping->host))
  return 0;
 return vfs_fsync_range(file, file->f_path.dentry, pos,
          pos + count - 1, 1);
}
