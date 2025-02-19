
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct minix_sb_info {scalar_t__ s_link_max; } ;
struct minix_dir_entry {int dummy; } ;
struct inode {scalar_t__ i_nlink; int i_ctime; int i_mode; int i_sb; } ;
struct dentry {struct inode* d_inode; } ;


 int CURRENT_TIME_SEC ;
 int EIO ;
 int EMLINK ;
 int ENOENT ;
 int ENOTEMPTY ;
 scalar_t__ S_ISDIR (int ) ;
 int drop_nlink (struct inode*) ;
 int inode_dec_link_count (struct inode*) ;
 int inode_inc_link_count (struct inode*) ;
 int kunmap (struct page*) ;
 int minix_add_link (struct dentry*,struct inode*) ;
 int minix_delete_entry (struct minix_dir_entry*,struct page*) ;
 struct minix_dir_entry* minix_dotdot (struct inode*,struct page**) ;
 int minix_empty_dir (struct inode*) ;
 struct minix_dir_entry* minix_find_entry (struct dentry*,struct page**) ;
 struct minix_sb_info* minix_sb (int ) ;
 int minix_set_link (struct minix_dir_entry*,struct page*,struct inode*) ;
 int page_cache_release (struct page*) ;

__attribute__((used)) static int minix_rename(struct inode * old_dir, struct dentry *old_dentry,
      struct inode * new_dir, struct dentry *new_dentry)
{
 struct minix_sb_info * info = minix_sb(old_dir->i_sb);
 struct inode * old_inode = old_dentry->d_inode;
 struct inode * new_inode = new_dentry->d_inode;
 struct page * dir_page = ((void*)0);
 struct minix_dir_entry * dir_de = ((void*)0);
 struct page * old_page;
 struct minix_dir_entry * old_de;
 int err = -ENOENT;

 old_de = minix_find_entry(old_dentry, &old_page);
 if (!old_de)
  goto out;

 if (S_ISDIR(old_inode->i_mode)) {
  err = -EIO;
  dir_de = minix_dotdot(old_inode, &dir_page);
  if (!dir_de)
   goto out_old;
 }

 if (new_inode) {
  struct page * new_page;
  struct minix_dir_entry * new_de;

  err = -ENOTEMPTY;
  if (dir_de && !minix_empty_dir(new_inode))
   goto out_dir;

  err = -ENOENT;
  new_de = minix_find_entry(new_dentry, &new_page);
  if (!new_de)
   goto out_dir;
  inode_inc_link_count(old_inode);
  minix_set_link(new_de, new_page, old_inode);
  new_inode->i_ctime = CURRENT_TIME_SEC;
  if (dir_de)
   drop_nlink(new_inode);
  inode_dec_link_count(new_inode);
 } else {
  if (dir_de) {
   err = -EMLINK;
   if (new_dir->i_nlink >= info->s_link_max)
    goto out_dir;
  }
  inode_inc_link_count(old_inode);
  err = minix_add_link(new_dentry, old_inode);
  if (err) {
   inode_dec_link_count(old_inode);
   goto out_dir;
  }
  if (dir_de)
   inode_inc_link_count(new_dir);
 }

 minix_delete_entry(old_de, old_page);
 inode_dec_link_count(old_inode);

 if (dir_de) {
  minix_set_link(dir_de, dir_page, new_dir);
  inode_dec_link_count(old_dir);
 }
 return 0;

out_dir:
 if (dir_de) {
  kunmap(dir_page);
  page_cache_release(dir_page);
 }
out_old:
 kunmap(old_page);
 page_cache_release(old_page);
out:
 return err;
}
