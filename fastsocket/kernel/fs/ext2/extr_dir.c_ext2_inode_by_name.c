
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct ext2_dir_entry_2 {int inode; } ;
typedef int ino_t ;


 struct ext2_dir_entry_2* ext2_find_entry (struct inode*,struct qstr*,struct page**) ;
 int ext2_put_page (struct page*) ;
 int le32_to_cpu (int ) ;

ino_t ext2_inode_by_name(struct inode *dir, struct qstr *child)
{
 ino_t res = 0;
 struct ext2_dir_entry_2 *de;
 struct page *page;

 de = ext2_find_entry (dir, child, &page);
 if (de) {
  res = le32_to_cpu(de->inode);
  ext2_put_page(page);
 }
 return res;
}
