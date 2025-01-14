
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {TYPE_2__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
typedef int ext4_lblk_t ;
typedef int ext4_fsblk_t ;
typedef void* __le32 ;
struct TYPE_5__ {int s_blocksize; } ;
struct TYPE_4__ {struct buffer_head* bh; void** p; void* key; } ;
typedef TYPE_1__ Indirect ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 void* cpu_to_le32 (int ) ;
 int ext4_alloc_blocks (int *,struct inode*,int,int ,int,int,int *,int*) ;
 int ext4_free_blocks (int *,struct inode*,int ,int,int ) ;
 int ext4_handle_dirty_metadata (int *,struct inode*,struct buffer_head*) ;
 int ext4_journal_forget (int *,struct buffer_head*) ;
 int ext4_journal_get_create_access (int *,struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int memset (scalar_t__,int ,int) ;
 struct buffer_head* sb_getblk (TYPE_2__*,int ) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static int ext4_alloc_branch(handle_t *handle, struct inode *inode,
        ext4_lblk_t iblock, int indirect_blks,
        int *blks, ext4_fsblk_t goal,
        ext4_lblk_t *offsets, Indirect *branch)
{
 int blocksize = inode->i_sb->s_blocksize;
 int i, n = 0;
 int err = 0;
 struct buffer_head *bh;
 int num;
 ext4_fsblk_t new_blocks[4];
 ext4_fsblk_t current_block;

 num = ext4_alloc_blocks(handle, inode, iblock, goal, indirect_blks,
    *blks, new_blocks, &err);
 if (err)
  return err;

 branch[0].key = cpu_to_le32(new_blocks[0]);



 for (n = 1; n <= indirect_blks; n++) {





  bh = sb_getblk(inode->i_sb, new_blocks[n-1]);
  branch[n].bh = bh;
  lock_buffer(bh);
  BUFFER_TRACE(bh, "call get_create_access");
  err = ext4_journal_get_create_access(handle, bh);
  if (err) {


   unlock_buffer(bh);
   goto failed;
  }

  memset(bh->b_data, 0, blocksize);
  branch[n].p = (__le32 *) bh->b_data + offsets[n];
  branch[n].key = cpu_to_le32(new_blocks[n]);
  *branch[n].p = branch[n].key;
  if (n == indirect_blks) {
   current_block = new_blocks[n];





   for (i = 1; i < num; i++)
    *(branch[n].p + i) = cpu_to_le32(++current_block);
  }
  BUFFER_TRACE(bh, "marking uptodate");
  set_buffer_uptodate(bh);
  unlock_buffer(bh);

  BUFFER_TRACE(bh, "call ext4_handle_dirty_metadata");
  err = ext4_handle_dirty_metadata(handle, inode, bh);
  if (err)
   goto failed;
 }
 *blks = num;
 return err;
failed:

 for (i = 1; i <= n ; i++) {
  BUFFER_TRACE(branch[i].bh, "call jbd2_journal_forget");
  ext4_journal_forget(handle, branch[i].bh);
 }
 for (i = 0; i < indirect_blks; i++)
  ext4_free_blocks(handle, inode, new_blocks[i], 1, 0);

 ext4_free_blocks(handle, inode, new_blocks[i], num, 0);

 return err;
}
