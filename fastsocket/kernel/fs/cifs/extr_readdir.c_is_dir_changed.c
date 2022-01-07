
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct cifsInodeInfo {scalar_t__ time; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 struct cifsInodeInfo* CIFS_I (struct inode*) ;

__attribute__((used)) static int is_dir_changed(struct file *file)
{
 struct inode *inode = file->f_path.dentry->d_inode;
 struct cifsInodeInfo *cifsInfo = CIFS_I(inode);

 if (cifsInfo->time == 0)
  return 1;
 else
  return 0;

}
