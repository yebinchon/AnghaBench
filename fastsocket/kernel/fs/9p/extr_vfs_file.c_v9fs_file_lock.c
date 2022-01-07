
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_data; int i_mapping; } ;
struct file_lock {scalar_t__ fl_type; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int ENOLCK ;
 scalar_t__ F_UNLCK ;
 scalar_t__ IS_SETLK (int) ;
 scalar_t__ IS_SETLKW (int) ;
 int P9_DEBUG_VFS ;
 int P9_DPRINTK (int ,char*,struct file*,struct file_lock*) ;
 scalar_t__ __mandatory_lock (struct inode*) ;
 int filemap_write_and_wait (int ) ;
 int invalidate_mapping_pages (int *,int ,int) ;

__attribute__((used)) static int v9fs_file_lock(struct file *filp, int cmd, struct file_lock *fl)
{
 int res = 0;
 struct inode *inode = filp->f_path.dentry->d_inode;

 P9_DPRINTK(P9_DEBUG_VFS, "filp: %p lock: %p\n", filp, fl);


 if (__mandatory_lock(inode))
  return -ENOLCK;

 if ((IS_SETLK(cmd) || IS_SETLKW(cmd)) && fl->fl_type != F_UNLCK) {
  filemap_write_and_wait(inode->i_mapping);
  invalidate_mapping_pages(&inode->i_data, 0, -1);
 }

 return res;
}
