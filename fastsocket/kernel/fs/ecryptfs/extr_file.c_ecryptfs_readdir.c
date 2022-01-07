
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; int f_pos; } ;
struct ecryptfs_getdents_callback {scalar_t__ entries_written; scalar_t__ filldir_called; int filldir; TYPE_1__* dentry; void* dirent; } ;
typedef int filldir_t ;
typedef int buf ;
struct TYPE_3__ {struct inode* d_inode; } ;


 struct file* ecryptfs_file_to_lower (struct file*) ;
 int ecryptfs_filldir ;
 int fsstack_copy_attr_atime (struct inode*,struct inode*) ;
 int memset (struct ecryptfs_getdents_callback*,int ,int) ;
 int vfs_readdir (struct file*,int ,void*) ;

__attribute__((used)) static int ecryptfs_readdir(struct file *file, void *dirent, filldir_t filldir)
{
 int rc;
 struct file *lower_file;
 struct inode *inode;
 struct ecryptfs_getdents_callback buf;

 lower_file = ecryptfs_file_to_lower(file);
 lower_file->f_pos = file->f_pos;
 inode = file->f_path.dentry->d_inode;
 memset(&buf, 0, sizeof(buf));
 buf.dirent = dirent;
 buf.dentry = file->f_path.dentry;
 buf.filldir = filldir;
 buf.filldir_called = 0;
 buf.entries_written = 0;
 rc = vfs_readdir(lower_file, ecryptfs_filldir, (void *)&buf);
 file->f_pos = lower_file->f_pos;
 if (rc < 0)
  goto out;
 if (buf.filldir_called && !buf.entries_written)
  goto out;
 if (rc >= 0)
  fsstack_copy_attr_atime(inode,
     lower_file->f_path.dentry->d_inode);
out:
 return rc;
}
