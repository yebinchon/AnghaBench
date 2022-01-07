
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int i_size; TYPE_1__* i_sb; int * i_op; } ;
struct dentry {int d_name; } ;
typedef struct inode handle_t ;
struct TYPE_6__ {int i_disksize; int i_data; } ;
struct TYPE_5__ {int s_blocksize; } ;


 int ENAMETOOLONG ;
 int ENOSPC ;
 scalar_t__ EXT4_DATA_TRANS_BLOCKS (TYPE_1__*) ;
 TYPE_3__* EXT4_I (struct inode*) ;
 scalar_t__ EXT4_INDEX_EXTRA_TRANS_BLOCKS ;
 int EXT4_INODE_EXTENTS ;
 scalar_t__ EXT4_MAXQUOTAS_INIT_BLOCKS (TYPE_1__*) ;
 scalar_t__ IS_DIRSYNC (struct inode*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int S_IFLNK ;
 int S_IRWXUGO ;
 int __page_symlink (struct inode*,char const*,int,int) ;
 int clear_nlink (struct inode*) ;
 int ext4_add_nondir (struct inode*,struct dentry*,struct inode*) ;
 int ext4_clear_inode_flag (struct inode*,int ) ;
 int ext4_fast_symlink_inode_operations ;
 int ext4_handle_sync (struct inode*) ;
 struct inode* ext4_journal_start (struct inode*,scalar_t__) ;
 int ext4_journal_stop (struct inode*) ;
 int ext4_mark_inode_dirty (struct inode*,struct inode*) ;
 struct inode* ext4_new_inode (struct inode*,struct inode*,int,int *,int ) ;
 int ext4_set_aops (struct inode*) ;
 scalar_t__ ext4_should_retry_alloc (TYPE_1__*,int*) ;
 int ext4_symlink_inode_operations ;
 int iput (struct inode*) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static int ext4_symlink(struct inode *dir,
   struct dentry *dentry, const char *symname)
{
 handle_t *handle;
 struct inode *inode;
 int l, err, retries = 0;

 l = strlen(symname)+1;
 if (l > dir->i_sb->s_blocksize)
  return -ENAMETOOLONG;

retry:
 handle = ext4_journal_start(dir, EXT4_DATA_TRANS_BLOCKS(dir->i_sb) +
     EXT4_INDEX_EXTRA_TRANS_BLOCKS + 5 +
     EXT4_MAXQUOTAS_INIT_BLOCKS(dir->i_sb));
 if (IS_ERR(handle))
  return PTR_ERR(handle);

 if (IS_DIRSYNC(dir))
  ext4_handle_sync(handle);

 inode = ext4_new_inode(handle, dir, S_IFLNK|S_IRWXUGO,
          &dentry->d_name, 0);
 err = PTR_ERR(inode);
 if (IS_ERR(inode))
  goto out_stop;

 if (l > sizeof(EXT4_I(inode)->i_data)) {
  inode->i_op = &ext4_symlink_inode_operations;
  ext4_set_aops(inode);





  err = __page_symlink(inode, symname, l, 1);
  if (err) {
   clear_nlink(inode);
   unlock_new_inode(inode);
   ext4_mark_inode_dirty(handle, inode);
   iput(inode);
   goto out_stop;
  }
 } else {

  ext4_clear_inode_flag(inode, EXT4_INODE_EXTENTS);
  inode->i_op = &ext4_fast_symlink_inode_operations;
  memcpy((char *)&EXT4_I(inode)->i_data, symname, l);
  inode->i_size = l-1;
 }
 EXT4_I(inode)->i_disksize = inode->i_size;
 err = ext4_add_nondir(handle, dentry, inode);
out_stop:
 ext4_journal_stop(handle);
 if (err == -ENOSPC && ext4_should_retry_alloc(dir->i_sb, &retries))
  goto retry;
 return err;
}
