
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct exofs_dir_entry {int inode_no; } ;
struct dentry {int dummy; } ;
typedef int ino_t ;


 struct exofs_dir_entry* exofs_find_entry (struct inode*,struct dentry*,struct page**) ;
 int exofs_put_page (struct page*) ;
 int le64_to_cpu (int ) ;

ino_t exofs_inode_by_name(struct inode *dir, struct dentry *dentry)
{
 ino_t res = 0;
 struct exofs_dir_entry *de;
 struct page *page;

 de = exofs_find_entry(dir, dentry, &page);
 if (de) {
  res = le64_to_cpu(de->inode_no);
  exofs_put_page(page);
 }
 return res;
}
