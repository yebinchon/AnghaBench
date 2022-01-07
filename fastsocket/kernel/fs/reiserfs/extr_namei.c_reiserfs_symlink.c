
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct reiserfs_transaction_handle {int dummy; } ;
struct reiserfs_security_handle {int dummy; } ;
struct inode {TYPE_3__* i_sb; int i_nlink; TYPE_1__* i_mapping; int * i_op; } ;
struct TYPE_11__ {int len; int name; } ;
struct dentry {TYPE_2__ d_name; } ;
struct TYPE_12__ {int s_blocksize; } ;
struct TYPE_10__ {int * a_ops; } ;


 int ENAMETOOLONG ;
 int ENOMEM ;
 int GFP_NOFS ;
 int JOURNAL_PER_BALANCE_CNT ;
 int MAX_DIRECT_ITEM_LEN (int ) ;
 int REISERFS_QUOTA_INIT_BLOCKS (TYPE_3__*) ;
 int REISERFS_QUOTA_TRANS_BLOCKS (TYPE_3__*) ;
 int ROUND_UP (int ) ;
 int S_IFLNK ;
 int S_IRWXUGO ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int drop_new_inode (struct inode*) ;
 int iput (struct inode*) ;
 int journal_begin (struct reiserfs_transaction_handle*,TYPE_3__*,int) ;
 int journal_end (struct reiserfs_transaction_handle*,TYPE_3__*,int) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int memcpy (char*,char const*,int ) ;
 struct inode* new_inode (TYPE_3__*) ;
 int new_inode_init (struct inode*,struct inode*,int) ;
 int padd_item (char*,int,int ) ;
 int reiserfs_add_entry (struct reiserfs_transaction_handle*,struct inode*,int ,int ,struct inode*,int) ;
 int reiserfs_address_space_operations ;
 int reiserfs_new_inode (struct reiserfs_transaction_handle*,struct inode*,int,char*,int ,struct dentry*,struct inode*,struct reiserfs_security_handle*) ;
 int reiserfs_security_init (struct inode*,struct inode*,struct reiserfs_security_handle*) ;
 int reiserfs_symlink_inode_operations ;
 int reiserfs_update_inode_transaction (struct inode*) ;
 int reiserfs_update_sd (struct reiserfs_transaction_handle*,struct inode*) ;
 int reiserfs_write_lock (TYPE_3__*) ;
 int reiserfs_write_unlock (TYPE_3__*) ;
 int strlen (char const*) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static int reiserfs_symlink(struct inode *parent_dir,
       struct dentry *dentry, const char *symname)
{
 int retval;
 struct inode *inode;
 char *name;
 int item_len;
 struct reiserfs_transaction_handle th;
 struct reiserfs_security_handle security;
 int mode = S_IFLNK | S_IRWXUGO;

 int jbegin_count =
     JOURNAL_PER_BALANCE_CNT * 3 +
     2 * (REISERFS_QUOTA_INIT_BLOCKS(parent_dir->i_sb) +
   REISERFS_QUOTA_TRANS_BLOCKS(parent_dir->i_sb));

 if (!(inode = new_inode(parent_dir->i_sb))) {
  return -ENOMEM;
 }
 new_inode_init(inode, parent_dir, mode);

 retval = reiserfs_security_init(parent_dir, inode, &security);
 if (retval < 0) {
  drop_new_inode(inode);
  return retval;
 }
 jbegin_count += retval;

 reiserfs_write_lock(parent_dir->i_sb);
 item_len = ROUND_UP(strlen(symname));
 if (item_len > MAX_DIRECT_ITEM_LEN(parent_dir->i_sb->s_blocksize)) {
  retval = -ENAMETOOLONG;
  drop_new_inode(inode);
  goto out_failed;
 }

 name = kmalloc(item_len, GFP_NOFS);
 if (!name) {
  drop_new_inode(inode);
  retval = -ENOMEM;
  goto out_failed;
 }
 memcpy(name, symname, strlen(symname));
 padd_item(name, item_len, strlen(symname));

 retval = journal_begin(&th, parent_dir->i_sb, jbegin_count);
 if (retval) {
  drop_new_inode(inode);
  kfree(name);
  goto out_failed;
 }

 retval =
     reiserfs_new_inode(&th, parent_dir, mode, name, strlen(symname),
          dentry, inode, &security);
 kfree(name);
 if (retval) {
  goto out_failed;
 }

 reiserfs_update_inode_transaction(inode);
 reiserfs_update_inode_transaction(parent_dir);

 inode->i_op = &reiserfs_symlink_inode_operations;
 inode->i_mapping->a_ops = &reiserfs_address_space_operations;





 retval = reiserfs_add_entry(&th, parent_dir, dentry->d_name.name,
        dentry->d_name.len, inode, 1 );
 if (retval) {
  int err;
  inode->i_nlink--;
  reiserfs_update_sd(&th, inode);
  err = journal_end(&th, parent_dir->i_sb, jbegin_count);
  if (err)
   retval = err;
  unlock_new_inode(inode);
  iput(inode);
  goto out_failed;
 }

 d_instantiate(dentry, inode);
 unlock_new_inode(inode);
 retval = journal_end(&th, parent_dir->i_sb, jbegin_count);
      out_failed:
 reiserfs_write_unlock(parent_dir->i_sb);
 return retval;
}
