
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ext3_iloc {int * bh; } ;
typedef int handle_t ;


 int BUFFER_TRACE (int *,char*) ;
 int brelse (int *) ;
 int ext3_get_inode_loc (struct inode*,struct ext3_iloc*) ;
 int ext3_journal_get_write_access (int *,int *) ;
 int ext3_std_error (int ,int) ;

int
ext3_reserve_inode_write(handle_t *handle, struct inode *inode,
    struct ext3_iloc *iloc)
{
 int err = 0;
 if (handle) {
  err = ext3_get_inode_loc(inode, iloc);
  if (!err) {
   BUFFER_TRACE(iloc->bh, "get_write_access");
   err = ext3_journal_get_write_access(handle, iloc->bh);
   if (err) {
    brelse(iloc->bh);
    iloc->bh = ((void*)0);
   }
  }
 }
 ext3_std_error(inode->i_sb, err);
 return err;
}
