
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct super_block {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {struct timespec i_ctime; struct timespec i_atime; struct timespec i_mtime; int i_version; struct super_block* i_sb; } ;
struct fat_slot_info {int bh; int i_pos; int de; } ;
struct dentry {TYPE_2__* d_parent; int d_time; int d_name; } ;
struct TYPE_4__ {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int i_version; } ;


 struct timespec CURRENT_TIME_SEC ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int brelse (int ) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 struct inode* fat_build_inode (struct super_block*,int ,int ) ;
 int lock_super (struct super_block*) ;
 int unlock_super (struct super_block*) ;
 int vfat_add_entry (struct inode*,int *,int ,int ,struct timespec*,struct fat_slot_info*) ;

__attribute__((used)) static int vfat_create(struct inode *dir, struct dentry *dentry, int mode,
         struct nameidata *nd)
{
 struct super_block *sb = dir->i_sb;
 struct inode *inode;
 struct fat_slot_info sinfo;
 struct timespec ts;
 int err;

 lock_super(sb);

 ts = CURRENT_TIME_SEC;
 err = vfat_add_entry(dir, &dentry->d_name, 0, 0, &ts, &sinfo);
 if (err)
  goto out;
 dir->i_version++;

 inode = fat_build_inode(sb, sinfo.de, sinfo.i_pos);
 brelse(sinfo.bh);
 if (IS_ERR(inode)) {
  err = PTR_ERR(inode);
  goto out;
 }
 inode->i_version++;
 inode->i_mtime = inode->i_atime = inode->i_ctime = ts;


 dentry->d_time = dentry->d_parent->d_inode->i_version;
 d_instantiate(dentry, inode);
out:
 unlock_super(sb);
 return err;
}
