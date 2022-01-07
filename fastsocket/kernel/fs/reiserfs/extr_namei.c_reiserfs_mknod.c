
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reiserfs_transaction_handle {int dummy; } ;
struct reiserfs_security_handle {int dummy; } ;
struct inode {int i_sb; int i_nlink; int i_mode; int * i_op; } ;
struct TYPE_2__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef int dev_t ;


 int EINVAL ;
 int ENOMEM ;
 int JOURNAL_PER_BALANCE_CNT ;
 int REISERFS_QUOTA_INIT_BLOCKS (int ) ;
 int REISERFS_QUOTA_TRANS_BLOCKS (int ) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int drop_new_inode (struct inode*) ;
 int init_special_inode (struct inode*,int ,int ) ;
 int iput (struct inode*) ;
 int journal_begin (struct reiserfs_transaction_handle*,int ,int) ;
 int journal_end (struct reiserfs_transaction_handle*,int ,int) ;
 struct inode* new_inode (int ) ;
 int new_inode_init (struct inode*,struct inode*,int) ;
 int new_valid_dev (int ) ;
 int reiserfs_add_entry (struct reiserfs_transaction_handle*,struct inode*,int ,int ,struct inode*,int) ;
 scalar_t__ reiserfs_cache_default_acl (struct inode*) ;
 int reiserfs_new_inode (struct reiserfs_transaction_handle*,struct inode*,int,int *,int ,struct dentry*,struct inode*,struct reiserfs_security_handle*) ;
 int reiserfs_security_init (struct inode*,struct inode*,struct reiserfs_security_handle*) ;
 int reiserfs_special_inode_operations ;
 int reiserfs_update_inode_transaction (struct inode*) ;
 int reiserfs_update_sd (struct reiserfs_transaction_handle*,struct inode*) ;
 int reiserfs_write_lock (int ) ;
 int reiserfs_write_unlock (int ) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static int reiserfs_mknod(struct inode *dir, struct dentry *dentry, int mode,
     dev_t rdev)
{
 int retval;
 struct inode *inode;
 struct reiserfs_transaction_handle th;
 struct reiserfs_security_handle security;

 int jbegin_count =
     JOURNAL_PER_BALANCE_CNT * 3 +
     2 * (REISERFS_QUOTA_INIT_BLOCKS(dir->i_sb) +
   REISERFS_QUOTA_TRANS_BLOCKS(dir->i_sb));

 if (!new_valid_dev(rdev))
  return -EINVAL;

 if (!(inode = new_inode(dir->i_sb))) {
  return -ENOMEM;
 }
 new_inode_init(inode, dir, mode);

 jbegin_count += reiserfs_cache_default_acl(dir);
 retval = reiserfs_security_init(dir, inode, &security);
 if (retval < 0) {
  drop_new_inode(inode);
  return retval;
 }
 jbegin_count += retval;
 reiserfs_write_lock(dir->i_sb);

 retval = journal_begin(&th, dir->i_sb, jbegin_count);
 if (retval) {
  drop_new_inode(inode);
  goto out_failed;
 }

 retval =
     reiserfs_new_inode(&th, dir, mode, ((void*)0), 0 , dentry,
          inode, &security);
 if (retval) {
  goto out_failed;
 }

 inode->i_op = &reiserfs_special_inode_operations;
 init_special_inode(inode, inode->i_mode, rdev);


 reiserfs_update_sd(&th, inode);

 reiserfs_update_inode_transaction(inode);
 reiserfs_update_inode_transaction(dir);

 retval =
     reiserfs_add_entry(&th, dir, dentry->d_name.name,
          dentry->d_name.len, inode, 1 );
 if (retval) {
  int err;
  inode->i_nlink--;
  reiserfs_update_sd(&th, inode);
  err = journal_end(&th, dir->i_sb, jbegin_count);
  if (err)
   retval = err;
  unlock_new_inode(inode);
  iput(inode);
  goto out_failed;
 }

 d_instantiate(dentry, inode);
 unlock_new_inode(inode);
 retval = journal_end(&th, dir->i_sb, jbegin_count);

      out_failed:
 reiserfs_write_unlock(dir->i_sb);
 return retval;
}
