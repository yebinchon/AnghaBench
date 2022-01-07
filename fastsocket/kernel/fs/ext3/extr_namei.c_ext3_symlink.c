
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int h_sync; int i_size; TYPE_1__* i_sb; int * i_op; } ;
struct dentry {int dummy; } ;
typedef struct inode handle_t ;
struct TYPE_6__ {int i_disksize; int i_data; } ;
struct TYPE_5__ {int s_blocksize; } ;


 int ENAMETOOLONG ;
 int ENOSPC ;
 scalar_t__ EXT3_DATA_TRANS_BLOCKS (TYPE_1__*) ;
 TYPE_3__* EXT3_I (struct inode*) ;
 scalar_t__ EXT3_INDEX_EXTRA_TRANS_BLOCKS ;
 int EXT3_QUOTA_INIT_BLOCKS (TYPE_1__*) ;
 scalar_t__ IS_DIRSYNC (struct inode*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int S_IFLNK ;
 int S_IRWXUGO ;
 int __page_symlink (struct inode*,char const*,int,int) ;
 int drop_nlink (struct inode*) ;
 int ext3_add_nondir (struct inode*,struct dentry*,struct inode*) ;
 int ext3_fast_symlink_inode_operations ;
 struct inode* ext3_journal_start (struct inode*,scalar_t__) ;
 int ext3_journal_stop (struct inode*) ;
 int ext3_mark_inode_dirty (struct inode*,struct inode*) ;
 struct inode* ext3_new_inode (struct inode*,struct inode*,int) ;
 int ext3_set_aops (struct inode*) ;
 scalar_t__ ext3_should_retry_alloc (TYPE_1__*,int*) ;
 int ext3_symlink_inode_operations ;
 int iput (struct inode*) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static int ext3_symlink (struct inode * dir,
  struct dentry *dentry, const char * symname)
{
 handle_t *handle;
 struct inode * inode;
 int l, err, retries = 0;

 l = strlen(symname)+1;
 if (l > dir->i_sb->s_blocksize)
  return -ENAMETOOLONG;

retry:
 handle = ext3_journal_start(dir, EXT3_DATA_TRANS_BLOCKS(dir->i_sb) +
     EXT3_INDEX_EXTRA_TRANS_BLOCKS + 5 +
     2*EXT3_QUOTA_INIT_BLOCKS(dir->i_sb));
 if (IS_ERR(handle))
  return PTR_ERR(handle);

 if (IS_DIRSYNC(dir))
  handle->h_sync = 1;

 inode = ext3_new_inode (handle, dir, S_IFLNK|S_IRWXUGO);
 err = PTR_ERR(inode);
 if (IS_ERR(inode))
  goto out_stop;

 if (l > sizeof (EXT3_I(inode)->i_data)) {
  inode->i_op = &ext3_symlink_inode_operations;
  ext3_set_aops(inode);





  err = __page_symlink(inode, symname, l, 1);
  if (err) {
   drop_nlink(inode);
   unlock_new_inode(inode);
   ext3_mark_inode_dirty(handle, inode);
   iput (inode);
   goto out_stop;
  }
 } else {
  inode->i_op = &ext3_fast_symlink_inode_operations;
  memcpy((char*)&EXT3_I(inode)->i_data,symname,l);
  inode->i_size = l-1;
 }
 EXT3_I(inode)->i_disksize = inode->i_size;
 err = ext3_add_nondir(handle, dentry, inode);
out_stop:
 ext3_journal_stop(handle);
 if (err == -ENOSPC && ext3_should_retry_alloc(dir->i_sb, &retries))
  goto retry;
 return err;
}
