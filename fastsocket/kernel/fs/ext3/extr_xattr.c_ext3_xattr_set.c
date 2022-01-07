
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
typedef int handle_t ;


 int ENOSPC ;
 int EXT3_DATA_TRANS_BLOCKS (int ) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int * ext3_journal_start (struct inode*,int ) ;
 int ext3_journal_stop (int *) ;
 scalar_t__ ext3_should_retry_alloc (int ,int*) ;
 int ext3_xattr_set_handle (int *,struct inode*,int,char const*,void const*,size_t,int) ;

int
ext3_xattr_set(struct inode *inode, int name_index, const char *name,
        const void *value, size_t value_len, int flags)
{
 handle_t *handle;
 int error, retries = 0;

retry:
 handle = ext3_journal_start(inode, EXT3_DATA_TRANS_BLOCKS(inode->i_sb));
 if (IS_ERR(handle)) {
  error = PTR_ERR(handle);
 } else {
  int error2;

  error = ext3_xattr_set_handle(handle, inode, name_index, name,
           value, value_len, flags);
  error2 = ext3_journal_stop(handle);
  if (error == -ENOSPC &&
      ext3_should_retry_alloc(inode->i_sb, &retries))
   goto retry;
  if (error == 0)
   error = error2;
 }

 return error;
}
