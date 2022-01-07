
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct autofs_sb_info {int dummy; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 struct autofs_sb_info* autofs4_sbi (int ) ;

__attribute__((used)) static struct autofs_sb_info *autofs_dev_ioctl_sbi(struct file *f)
{
 struct autofs_sb_info *sbi = ((void*)0);
 struct inode *inode;

 if (f) {
  inode = f->f_path.dentry->d_inode;
  sbi = autofs4_sbi(inode->i_sb);
 }
 return sbi;
}
