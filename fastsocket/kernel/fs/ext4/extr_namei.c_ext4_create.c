
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct inode {int i_sb; int * i_fop; int * i_op; } ;
struct dentry {int d_name; } ;
typedef struct inode handle_t ;


 int ENOSPC ;
 scalar_t__ EXT4_DATA_TRANS_BLOCKS (int ) ;
 scalar_t__ EXT4_INDEX_EXTRA_TRANS_BLOCKS ;
 scalar_t__ EXT4_MAXQUOTAS_INIT_BLOCKS (int ) ;
 scalar_t__ IS_DIRSYNC (struct inode*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int ext4_add_nondir (struct inode*,struct dentry*,struct inode*) ;
 int ext4_file_inode_operations ;
 int ext4_file_operations ;
 int ext4_handle_sync (struct inode*) ;
 struct inode* ext4_journal_start (struct inode*,scalar_t__) ;
 int ext4_journal_stop (struct inode*) ;
 struct inode* ext4_new_inode (struct inode*,struct inode*,int,int *,int ) ;
 int ext4_set_aops (struct inode*) ;
 scalar_t__ ext4_should_retry_alloc (int ,int*) ;

__attribute__((used)) static int ext4_create(struct inode *dir, struct dentry *dentry, int mode,
         struct nameidata *nd)
{
 handle_t *handle;
 struct inode *inode;
 int err, retries = 0;

retry:
 handle = ext4_journal_start(dir, EXT4_DATA_TRANS_BLOCKS(dir->i_sb) +
     EXT4_INDEX_EXTRA_TRANS_BLOCKS + 3 +
     EXT4_MAXQUOTAS_INIT_BLOCKS(dir->i_sb));
 if (IS_ERR(handle))
  return PTR_ERR(handle);

 if (IS_DIRSYNC(dir))
  ext4_handle_sync(handle);

 inode = ext4_new_inode(handle, dir, mode, &dentry->d_name, 0);
 err = PTR_ERR(inode);
 if (!IS_ERR(inode)) {
  inode->i_op = &ext4_file_inode_operations;
  inode->i_fop = &ext4_file_operations;
  ext4_set_aops(inode);
  err = ext4_add_nondir(handle, dentry, inode);
 }
 ext4_journal_stop(handle);
 if (err == -ENOSPC && ext4_should_retry_alloc(dir->i_sb, &retries))
  goto retry;
 return err;
}
