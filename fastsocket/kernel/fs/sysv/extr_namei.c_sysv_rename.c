
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysv_dir_entry {int dummy; } ;
struct page {int dummy; } ;
struct inode {scalar_t__ i_nlink; int i_sb; int i_ctime; int i_mode; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {scalar_t__ s_link_max; } ;


 int CURRENT_TIME_SEC ;
 int EIO ;
 int EMLINK ;
 int ENOENT ;
 int ENOTEMPTY ;
 TYPE_1__* SYSV_SB (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 int drop_nlink (struct inode*) ;
 int inode_dec_link_count (struct inode*) ;
 int inode_inc_link_count (struct inode*) ;
 int kunmap (struct page*) ;
 int page_cache_release (struct page*) ;
 int sysv_add_link (struct dentry*,struct inode*) ;
 int sysv_delete_entry (struct sysv_dir_entry*,struct page*) ;
 struct sysv_dir_entry* sysv_dotdot (struct inode*,struct page**) ;
 int sysv_empty_dir (struct inode*) ;
 struct sysv_dir_entry* sysv_find_entry (struct dentry*,struct page**) ;
 int sysv_set_link (struct sysv_dir_entry*,struct page*,struct inode*) ;

__attribute__((used)) static int sysv_rename(struct inode * old_dir, struct dentry * old_dentry,
    struct inode * new_dir, struct dentry * new_dentry)
{
 struct inode * old_inode = old_dentry->d_inode;
 struct inode * new_inode = new_dentry->d_inode;
 struct page * dir_page = ((void*)0);
 struct sysv_dir_entry * dir_de = ((void*)0);
 struct page * old_page;
 struct sysv_dir_entry * old_de;
 int err = -ENOENT;

 old_de = sysv_find_entry(old_dentry, &old_page);
 if (!old_de)
  goto out;

 if (S_ISDIR(old_inode->i_mode)) {
  err = -EIO;
  dir_de = sysv_dotdot(old_inode, &dir_page);
  if (!dir_de)
   goto out_old;
 }

 if (new_inode) {
  struct page * new_page;
  struct sysv_dir_entry * new_de;

  err = -ENOTEMPTY;
  if (dir_de && !sysv_empty_dir(new_inode))
   goto out_dir;

  err = -ENOENT;
  new_de = sysv_find_entry(new_dentry, &new_page);
  if (!new_de)
   goto out_dir;
  inode_inc_link_count(old_inode);
  sysv_set_link(new_de, new_page, old_inode);
  new_inode->i_ctime = CURRENT_TIME_SEC;
  if (dir_de)
   drop_nlink(new_inode);
  inode_dec_link_count(new_inode);
 } else {
  if (dir_de) {
   err = -EMLINK;
   if (new_dir->i_nlink >= SYSV_SB(new_dir->i_sb)->s_link_max)
    goto out_dir;
  }
  inode_inc_link_count(old_inode);
  err = sysv_add_link(new_dentry, old_inode);
  if (err) {
   inode_dec_link_count(old_inode);
   goto out_dir;
  }
  if (dir_de)
   inode_inc_link_count(new_dir);
 }

 sysv_delete_entry(old_de, old_page);
 inode_dec_link_count(old_inode);

 if (dir_de) {
  sysv_set_link(dir_de, dir_page, new_dir);
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
