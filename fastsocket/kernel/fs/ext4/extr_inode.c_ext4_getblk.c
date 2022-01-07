
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {int b_blocknr; int b_data; int b_history; scalar_t__ b_state; } ;
typedef int handle_t ;
typedef int ext4_lblk_t ;
struct TYPE_2__ {int s_blocksize; } ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int EIO ;
 int EXT4_GET_BLOCKS_CREATE ;
 int J_ASSERT (int) ;
 int WARN_ON (int) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_mapped (struct buffer_head*) ;
 scalar_t__ buffer_new (struct buffer_head*) ;
 int buffer_trace_init (int *) ;
 int buffer_uptodate (struct buffer_head*) ;
 int ext4_get_blocks (int *,struct inode*,int ,int,struct buffer_head*,int) ;
 int ext4_handle_dirty_metadata (int *,struct inode*,struct buffer_head*) ;
 int ext4_journal_get_create_access (int *,struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int memset (int ,int ,int ) ;
 struct buffer_head* sb_getblk (TYPE_1__*,int) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

struct buffer_head *ext4_getblk(handle_t *handle, struct inode *inode,
    ext4_lblk_t block, int create, int *errp)
{
 struct buffer_head dummy;
 int fatal = 0, err;
 int flags = 0;

 J_ASSERT(handle != ((void*)0) || create == 0);

 dummy.b_state = 0;
 dummy.b_blocknr = -1000;
 buffer_trace_init(&dummy.b_history);
 if (create)
  flags |= EXT4_GET_BLOCKS_CREATE;
 err = ext4_get_blocks(handle, inode, block, 1, &dummy, flags);




 if (err > 0) {
  if (err > 1)
   WARN_ON(1);
  err = 0;
 }
 *errp = err;
 if (!err && buffer_mapped(&dummy)) {
  struct buffer_head *bh;
  bh = sb_getblk(inode->i_sb, dummy.b_blocknr);
  if (!bh) {
   *errp = -EIO;
   goto err;
  }
  if (buffer_new(&dummy)) {
   J_ASSERT(create != 0);
   J_ASSERT(handle != ((void*)0));
   lock_buffer(bh);
   BUFFER_TRACE(bh, "call get_create_access");
   fatal = ext4_journal_get_create_access(handle, bh);
   if (!fatal && !buffer_uptodate(bh)) {
    memset(bh->b_data, 0, inode->i_sb->s_blocksize);
    set_buffer_uptodate(bh);
   }
   unlock_buffer(bh);
   BUFFER_TRACE(bh, "call ext4_handle_dirty_metadata");
   err = ext4_handle_dirty_metadata(handle, inode, bh);
   if (!fatal)
    fatal = err;
  } else {
   BUFFER_TRACE(bh, "not a new buffer");
  }
  if (fatal) {
   *errp = fatal;
   brelse(bh);
   bh = ((void*)0);
  }
  return bh;
 }
err:
 return ((void*)0);
}
