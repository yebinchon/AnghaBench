
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct exofs_dir_entry {int inode_no; } ;
struct dentry {int d_inode; } ;
typedef int ino_t ;


 struct exofs_dir_entry* exofs_dotdot (int ,struct page**) ;
 int exofs_put_page (struct page*) ;
 int le64_to_cpu (int ) ;

ino_t exofs_parent_ino(struct dentry *child)
{
 struct page *page;
 struct exofs_dir_entry *de;
 ino_t ino;

 de = exofs_dotdot(child->d_inode, &page);
 if (!de)
  return 0;

 ino = le64_to_cpu(de->inode_no);
 exofs_put_page(page);
 return ino;
}
