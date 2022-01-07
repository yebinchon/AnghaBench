
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int i_mode; } ;
struct file_lock {int dummy; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct file {struct cifsFileInfo* private_data; TYPE_2__ f_path; } ;
struct cifsFileInfo {int tlink; } ;
struct TYPE_8__ {scalar_t__ clientCanCacheRead; scalar_t__ clientCanCacheAll; } ;
struct TYPE_7__ {scalar_t__ local_lease; } ;
struct TYPE_5__ {struct inode* d_inode; } ;


 TYPE_4__* CIFS_I (struct inode*) ;
 int EAGAIN ;
 int EINVAL ;
 long F_RDLCK ;
 long F_WRLCK ;
 int S_ISREG (int ) ;
 int generic_setlease (struct file*,long,struct file_lock**) ;
 TYPE_3__* tlink_tcon (int ) ;

__attribute__((used)) static int cifs_setlease(struct file *file, long arg, struct file_lock **lease)
{


 struct inode *inode = file->f_path.dentry->d_inode;
 struct cifsFileInfo *cfile = file->private_data;

 if (!(S_ISREG(inode->i_mode)))
  return -EINVAL;


 if (((arg == F_RDLCK) &&
  (CIFS_I(inode)->clientCanCacheRead)) ||
     ((arg == F_WRLCK) &&
  (CIFS_I(inode)->clientCanCacheAll)))
  return generic_setlease(file, arg, lease);
 else if (tlink_tcon(cfile->tlink)->local_lease &&
   !CIFS_I(inode)->clientCanCacheRead)







  return generic_setlease(file, arg, lease);
 else
  return -EAGAIN;
}
