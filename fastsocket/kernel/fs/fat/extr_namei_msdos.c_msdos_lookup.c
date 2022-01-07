
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct fat_slot_info {int bh; int i_pos; int de; } ;
struct TYPE_2__ {int len; int name; } ;
struct dentry {int * d_op; TYPE_1__ d_name; } ;


 int ENOENT ;
 struct dentry* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int brelse (int ) ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 struct inode* fat_build_inode (struct super_block*,int ,int ) ;
 int lock_super (struct super_block*) ;
 int msdos_dentry_operations ;
 int msdos_find (struct inode*,int ,int ,struct fat_slot_info*) ;
 int unlock_super (struct super_block*) ;

__attribute__((used)) static struct dentry *msdos_lookup(struct inode *dir, struct dentry *dentry,
       struct nameidata *nd)
{
 struct super_block *sb = dir->i_sb;
 struct fat_slot_info sinfo;
 struct inode *inode;
 int err;

 lock_super(sb);

 err = msdos_find(dir, dentry->d_name.name, dentry->d_name.len, &sinfo);
 if (err) {
  if (err == -ENOENT) {
   inode = ((void*)0);
   goto out;
  }
  goto error;
 }

 inode = fat_build_inode(sb, sinfo.de, sinfo.i_pos);
 brelse(sinfo.bh);
 if (IS_ERR(inode)) {
  err = PTR_ERR(inode);
  goto error;
 }
out:
 unlock_super(sb);
 dentry->d_op = &msdos_dentry_operations;
 dentry = d_splice_alias(inode, dentry);
 if (dentry)
  dentry->d_op = &msdos_dentry_operations;
 return dentry;

error:
 unlock_super(sb);
 return ERR_PTR(err);
}
