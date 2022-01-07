
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct msdos_dir_entry {int dummy; } ;
struct inode {int i_version; int i_ino; } ;
typedef int loff_t ;


 int ENOMEM ;
 struct inode* ERR_PTR (int) ;
 int MSDOS_ROOT_INO ;
 int fat_attach (struct inode*,int ) ;
 int fat_fill_inode (struct inode*,struct msdos_dir_entry*) ;
 struct inode* fat_iget (struct super_block*,int ) ;
 int insert_inode_hash (struct inode*) ;
 int iput (struct inode*) ;
 int iunique (struct super_block*,int ) ;
 struct inode* new_inode (struct super_block*) ;

struct inode *fat_build_inode(struct super_block *sb,
   struct msdos_dir_entry *de, loff_t i_pos)
{
 struct inode *inode;
 int err;

 inode = fat_iget(sb, i_pos);
 if (inode)
  goto out;
 inode = new_inode(sb);
 if (!inode) {
  inode = ERR_PTR(-ENOMEM);
  goto out;
 }
 inode->i_ino = iunique(sb, MSDOS_ROOT_INO);
 inode->i_version = 1;
 err = fat_fill_inode(inode, de);
 if (err) {
  iput(inode);
  inode = ERR_PTR(err);
  goto out;
 }
 fat_attach(inode, i_pos);
 insert_inode_hash(inode);
out:
 return inode;
}
