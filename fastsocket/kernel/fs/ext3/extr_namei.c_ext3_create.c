
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct inode {int h_sync; int i_sb; int * i_fop; int * i_op; } ;
struct dentry {int dummy; } ;
typedef struct inode handle_t ;


 int ENOSPC ;
 scalar_t__ EXT3_DATA_TRANS_BLOCKS (int ) ;
 scalar_t__ EXT3_INDEX_EXTRA_TRANS_BLOCKS ;
 int EXT3_QUOTA_INIT_BLOCKS (int ) ;
 scalar_t__ IS_DIRSYNC (struct inode*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int ext3_add_nondir (struct inode*,struct dentry*,struct inode*) ;
 int ext3_file_inode_operations ;
 int ext3_file_operations ;
 struct inode* ext3_journal_start (struct inode*,scalar_t__) ;
 int ext3_journal_stop (struct inode*) ;
 struct inode* ext3_new_inode (struct inode*,struct inode*,int) ;
 int ext3_set_aops (struct inode*) ;
 scalar_t__ ext3_should_retry_alloc (int ,int*) ;

__attribute__((used)) static int ext3_create (struct inode * dir, struct dentry * dentry, int mode,
  struct nameidata *nd)
{
 handle_t *handle;
 struct inode * inode;
 int err, retries = 0;

retry:
 handle = ext3_journal_start(dir, EXT3_DATA_TRANS_BLOCKS(dir->i_sb) +
     EXT3_INDEX_EXTRA_TRANS_BLOCKS + 3 +
     2*EXT3_QUOTA_INIT_BLOCKS(dir->i_sb));
 if (IS_ERR(handle))
  return PTR_ERR(handle);

 if (IS_DIRSYNC(dir))
  handle->h_sync = 1;

 inode = ext3_new_inode (handle, dir, mode);
 err = PTR_ERR(inode);
 if (!IS_ERR(inode)) {
  inode->i_op = &ext3_file_inode_operations;
  inode->i_fop = &ext3_file_operations;
  ext3_set_aops(inode);
  err = ext3_add_nondir(handle, dentry, inode);
 }
 ext3_journal_stop(handle);
 if (err == -ENOSPC && ext3_should_retry_alloc(dir->i_sb, &retries))
  goto retry;
 return err;
}
