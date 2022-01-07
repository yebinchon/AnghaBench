
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct minix_dir_entry {int dummy; } ;
struct inode {int i_ctime; } ;
struct dentry {struct inode* d_inode; } ;


 int ENOENT ;
 int inode_dec_link_count (struct inode*) ;
 int minix_delete_entry (struct minix_dir_entry*,struct page*) ;
 struct minix_dir_entry* minix_find_entry (struct dentry*,struct page**) ;

__attribute__((used)) static int minix_unlink(struct inode * dir, struct dentry *dentry)
{
 int err = -ENOENT;
 struct inode * inode = dentry->d_inode;
 struct page * page;
 struct minix_dir_entry * de;

 de = minix_find_entry(dentry, &page);
 if (!de)
  goto end_unlink;

 err = minix_delete_entry(de, page);
 if (err)
  goto end_unlink;

 inode->i_ctime = dir->i_ctime;
 inode_dec_link_count(inode);
end_unlink:
 return err;
}
