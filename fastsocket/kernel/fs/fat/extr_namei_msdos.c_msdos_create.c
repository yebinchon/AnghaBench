
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct super_block {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {struct timespec i_ctime; struct timespec i_atime; struct timespec i_mtime; struct super_block* i_sb; } ;
struct fat_slot_info {int bh; int i_pos; int de; } ;
struct TYPE_3__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct TYPE_4__ {int options; } ;


 struct timespec CURRENT_TIME_SEC ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct inode*) ;
 int MSDOS_NAME ;
 TYPE_2__* MSDOS_SB (struct super_block*) ;
 int PTR_ERR (struct inode*) ;
 int brelse (int ) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 struct inode* fat_build_inode (struct super_block*,int ,int ) ;
 int fat_flush_inodes (struct super_block*,struct inode*,struct inode*) ;
 int fat_scan (struct inode*,unsigned char*,struct fat_slot_info*) ;
 int lock_super (struct super_block*) ;
 int msdos_add_entry (struct inode*,unsigned char*,int ,int,int ,struct timespec*,struct fat_slot_info*) ;
 int msdos_format_name (char*,int ,unsigned char*,int *) ;
 int unlock_super (struct super_block*) ;

__attribute__((used)) static int msdos_create(struct inode *dir, struct dentry *dentry, int mode,
   struct nameidata *nd)
{
 struct super_block *sb = dir->i_sb;
 struct inode *inode = ((void*)0);
 struct fat_slot_info sinfo;
 struct timespec ts;
 unsigned char msdos_name[MSDOS_NAME];
 int err, is_hid;

 lock_super(sb);

 err = msdos_format_name(dentry->d_name.name, dentry->d_name.len,
    msdos_name, &MSDOS_SB(sb)->options);
 if (err)
  goto out;
 is_hid = (dentry->d_name.name[0] == '.') && (msdos_name[0] != '.');

 if (!fat_scan(dir, msdos_name, &sinfo)) {
  brelse(sinfo.bh);
  err = -EINVAL;
  goto out;
 }

 ts = CURRENT_TIME_SEC;
 err = msdos_add_entry(dir, msdos_name, 0, is_hid, 0, &ts, &sinfo);
 if (err)
  goto out;
 inode = fat_build_inode(sb, sinfo.de, sinfo.i_pos);
 brelse(sinfo.bh);
 if (IS_ERR(inode)) {
  err = PTR_ERR(inode);
  goto out;
 }
 inode->i_mtime = inode->i_atime = inode->i_ctime = ts;


 d_instantiate(dentry, inode);
out:
 unlock_super(sb);
 if (!err)
  err = fat_flush_inodes(sb, dir, inode);
 return err;
}
