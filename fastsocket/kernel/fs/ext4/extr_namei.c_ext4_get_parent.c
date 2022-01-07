
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qstr {char* name; int len; } ;
struct inode {int dummy; } ;
struct ext4_dir_entry_2 {int inode; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct buffer_head {int dummy; } ;
typedef int __u32 ;
struct TYPE_2__ {int i_sb; } ;


 int EIO ;
 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 int brelse (struct buffer_head*) ;
 struct dentry* d_obtain_alias (int ) ;
 int ext4_error (int ,char*,int ) ;
 struct buffer_head* ext4_find_entry (TYPE_1__*,struct qstr const*,struct ext4_dir_entry_2**) ;
 int ext4_iget (int ,int ) ;
 int ext4_valid_inum (int ,int ) ;
 int le32_to_cpu (int ) ;

struct dentry *ext4_get_parent(struct dentry *child)
{
 __u32 ino;
 struct inode *inode;
 static const struct qstr dotdot = {
  .name = "..",
  .len = 2,
 };
 struct ext4_dir_entry_2 * de;
 struct buffer_head *bh;

 bh = ext4_find_entry(child->d_inode, &dotdot, &de);
 inode = ((void*)0);
 if (!bh)
  return ERR_PTR(-ENOENT);
 ino = le32_to_cpu(de->inode);
 brelse(bh);

 if (!ext4_valid_inum(child->d_inode->i_sb, ino)) {
  ext4_error(child->d_inode->i_sb,
      "bad inode number: %u", ino);
  return ERR_PTR(-EIO);
 }

 return d_obtain_alias(ext4_iget(child->d_inode->i_sb, ino));
}
