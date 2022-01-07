
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_3__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct TYPE_4__ {int name; int len; } ;
struct dentry {TYPE_2__ d_name; int d_sb; } ;
struct autofs_sb_info {int dummy; } ;


 int DPRINTK (char*,struct file*,struct dentry*,int ,int ) ;
 int ENOENT ;
 scalar_t__ autofs4_oz_mode (struct autofs_sb_info*) ;
 struct autofs_sb_info* autofs4_sbi (int ) ;
 int d_mountpoint (struct dentry*) ;
 int dcache_dir_open (struct inode*,struct file*) ;
 scalar_t__ simple_empty (struct dentry*) ;

__attribute__((used)) static int autofs4_dir_open(struct inode *inode, struct file *file)
{
 struct dentry *dentry = file->f_path.dentry;
 struct autofs_sb_info *sbi = autofs4_sbi(dentry->d_sb);

 DPRINTK("file=%p dentry=%p %.*s",
  file, dentry, dentry->d_name.len, dentry->d_name.name);

 if (autofs4_oz_mode(sbi))
  goto out;
 if (!d_mountpoint(dentry) && simple_empty(dentry))
  return -ENOENT;

out:
 return dcache_dir_open(inode, file);
}
