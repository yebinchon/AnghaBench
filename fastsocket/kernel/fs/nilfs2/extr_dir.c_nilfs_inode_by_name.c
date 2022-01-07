
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nilfs_dir_entry {int inode; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef int ino_t ;


 int kunmap (struct page*) ;
 int le64_to_cpu (int ) ;
 struct nilfs_dir_entry* nilfs_find_entry (struct inode*,struct dentry*,struct page**) ;
 int page_cache_release (struct page*) ;

ino_t nilfs_inode_by_name(struct inode *dir, struct dentry *dentry)
{
 ino_t res = 0;
 struct nilfs_dir_entry *de;
 struct page *page;

 de = nilfs_find_entry(dir, dentry, &page);
 if (de) {
  res = le64_to_cpu(de->inode);
  kunmap(page);
  page_cache_release(page);
 }
 return res;
}
