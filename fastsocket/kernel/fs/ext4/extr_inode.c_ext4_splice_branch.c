
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
typedef int handle_t ;
typedef int ext4_lblk_t ;
typedef scalar_t__ ext4_fsblk_t ;
struct TYPE_3__ {int key; scalar_t__ bh; int * p; } ;
typedef TYPE_1__ Indirect ;


 int BUFFER_TRACE (scalar_t__,char*) ;
 int cpu_to_le32 (int ) ;
 int ext4_free_blocks (int *,struct inode*,int ,int,int ) ;
 int ext4_handle_dirty_metadata (int *,struct inode*,scalar_t__) ;
 int ext4_journal_forget (int *,scalar_t__) ;
 int ext4_journal_get_write_access (int *,scalar_t__) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int jbd_debug (int,char*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int ext4_splice_branch(handle_t *handle, struct inode *inode,
         ext4_lblk_t block, Indirect *where, int num,
         int blks)
{
 int i;
 int err = 0;
 ext4_fsblk_t current_block;






 if (where->bh) {
  BUFFER_TRACE(where->bh, "get_write_access");
  err = ext4_journal_get_write_access(handle, where->bh);
  if (err)
   goto err_out;
 }


 *where->p = where->key;





 if (num == 0 && blks > 1) {
  current_block = le32_to_cpu(where->key) + 1;
  for (i = 1; i < blks; i++)
   *(where->p + i) = cpu_to_le32(current_block++);
 }



 if (where->bh) {
  jbd_debug(5, "splicing indirect only\n");
  BUFFER_TRACE(where->bh, "call ext4_handle_dirty_metadata");
  err = ext4_handle_dirty_metadata(handle, inode, where->bh);
  if (err)
   goto err_out;
 } else {



  ext4_mark_inode_dirty(handle, inode);
  jbd_debug(5, "splicing direct\n");
 }
 return err;

err_out:
 for (i = 1; i <= num; i++) {
  BUFFER_TRACE(where[i].bh, "call jbd2_journal_forget");
  ext4_journal_forget(handle, where[i].bh);
  ext4_free_blocks(handle, inode,
     le32_to_cpu(where[i-1].key), 1, 0);
 }
 ext4_free_blocks(handle, inode, le32_to_cpu(where[num].key), blks, 0);

 return err;
}
