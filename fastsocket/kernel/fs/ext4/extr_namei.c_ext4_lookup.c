
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct inode {int i_sb; } ;
struct ext4_dir_entry_2 {int inode; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
typedef int __u32 ;


 int EIO ;
 int ENAMETOOLONG ;
 struct dentry* ERR_CAST (struct inode*) ;
 struct dentry* ERR_PTR (int ) ;
 int ESTALE ;
 scalar_t__ EXT4_NAME_LEN ;
 int IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int brelse (struct buffer_head*) ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 int ext4_error (int ,char*,int ) ;
 struct buffer_head* ext4_find_entry (struct inode*,TYPE_1__*,struct ext4_dir_entry_2**) ;
 struct inode* ext4_iget (int ,int ) ;
 int ext4_valid_inum (int ,int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct dentry *ext4_lookup(struct inode *dir, struct dentry *dentry, struct nameidata *nd)
{
 struct inode *inode;
 struct ext4_dir_entry_2 *de;
 struct buffer_head *bh;

 if (dentry->d_name.len > EXT4_NAME_LEN)
  return ERR_PTR(-ENAMETOOLONG);

 bh = ext4_find_entry(dir, &dentry->d_name, &de);
 inode = ((void*)0);
 if (bh) {
  __u32 ino = le32_to_cpu(de->inode);
  brelse(bh);
  if (!ext4_valid_inum(dir->i_sb, ino)) {
   ext4_error(dir->i_sb, "bad inode number: %u", ino);
   return ERR_PTR(-EIO);
  }
  inode = ext4_iget(dir->i_sb, ino);
  if (unlikely(IS_ERR(inode))) {
   if (PTR_ERR(inode) == -ESTALE) {
    ext4_error(dir->i_sb,
      "deleted inode referenced: %u",
      ino);
    return ERR_PTR(-EIO);
   } else {
    return ERR_CAST(inode);
   }
  }
 }
 return d_splice_alias(inode, dentry);
}
