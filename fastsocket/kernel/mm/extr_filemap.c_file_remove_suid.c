
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {int dummy; } ;


 int __remove_suid (struct dentry*,int) ;
 int security_inode_killpriv (struct dentry*) ;
 int security_inode_need_killpriv (struct dentry*) ;
 int should_remove_suid (struct dentry*) ;

int file_remove_suid(struct file *file)
{
 struct dentry *dentry = file->f_path.dentry;
 int killsuid = should_remove_suid(dentry);
 int killpriv = security_inode_need_killpriv(dentry);
 int error = 0;

 if (killpriv < 0)
  return killpriv;
 if (killpriv)
  error = security_inode_killpriv(dentry);
 if (!error && killsuid)
  error = __remove_suid(dentry, killsuid);

 return error;
}
