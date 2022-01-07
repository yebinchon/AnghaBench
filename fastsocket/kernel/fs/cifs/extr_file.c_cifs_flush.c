
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_mapping; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {int f_mode; TYPE_2__ f_path; } ;
typedef int fl_owner_t ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int FMODE_WRITE ;
 int cFYI (int,char*,struct inode*,struct file*,int) ;
 int filemap_write_and_wait (int ) ;

int cifs_flush(struct file *file, fl_owner_t id)
{
 struct inode *inode = file->f_path.dentry->d_inode;
 int rc = 0;

 if (file->f_mode & FMODE_WRITE)
  rc = filemap_write_and_wait(inode->i_mapping);

 cFYI(1, "Flush inode %p file %p rc %d", inode, file, rc);

 return rc;
}
