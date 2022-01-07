
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qstr {char* name; int len; } ;
struct ext3_dir_entry_2 {int inode; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int i_sb; } ;


 int EIO ;
 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 int brelse (struct buffer_head*) ;
 struct dentry* d_obtain_alias (int ) ;
 int ext3_error (int ,char*,char*,unsigned long) ;
 struct buffer_head* ext3_find_entry (TYPE_1__*,struct qstr*,struct ext3_dir_entry_2**) ;
 int ext3_iget (int ,unsigned long) ;
 int ext3_valid_inum (int ,unsigned long) ;
 unsigned long le32_to_cpu (int ) ;

struct dentry *ext3_get_parent(struct dentry *child)
{
 unsigned long ino;
 struct qstr dotdot = {.name = "..", .len = 2};
 struct ext3_dir_entry_2 * de;
 struct buffer_head *bh;

 bh = ext3_find_entry(child->d_inode, &dotdot, &de);
 if (!bh)
  return ERR_PTR(-ENOENT);
 ino = le32_to_cpu(de->inode);
 brelse(bh);

 if (!ext3_valid_inum(child->d_inode->i_sb, ino)) {
  ext3_error(child->d_inode->i_sb, "ext3_get_parent",
      "bad inode number: %lu", ino);
  return ERR_PTR(-EIO);
 }

 return d_obtain_alias(ext3_iget(child->d_inode->i_sb, ino));
}
