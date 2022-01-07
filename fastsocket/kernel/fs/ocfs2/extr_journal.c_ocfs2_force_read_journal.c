
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct inode {int i_sb; int i_size; } ;
struct buffer_head {int dummy; } ;


 int CONCURRENT_JOURNAL_FILL ;
 int OCFS2_SB (int ) ;
 int brelse (struct buffer_head*) ;
 int memset (struct buffer_head**,int ,int) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 scalar_t__ ocfs2_blocks_for_bytes (int ,int ) ;
 int ocfs2_extent_map_get_blocks (struct inode*,scalar_t__,scalar_t__*,scalar_t__*,int *) ;
 int ocfs2_read_blocks_sync (int ,scalar_t__,scalar_t__,struct buffer_head**) ;

__attribute__((used)) static int ocfs2_force_read_journal(struct inode *inode)
{
 int status = 0;
 int i;
 u64 v_blkno, p_blkno, p_blocks, num_blocks;

 struct buffer_head *bhs[32ULL];

 mlog_entry_void();

 memset(bhs, 0, sizeof(struct buffer_head *) * 32ULL);

 num_blocks = ocfs2_blocks_for_bytes(inode->i_sb, inode->i_size);
 v_blkno = 0;
 while (v_blkno < num_blocks) {
  status = ocfs2_extent_map_get_blocks(inode, v_blkno,
           &p_blkno, &p_blocks, ((void*)0));
  if (status < 0) {
   mlog_errno(status);
   goto bail;
  }

  if (p_blocks > 32ULL)
   p_blocks = 32ULL;



  status = ocfs2_read_blocks_sync(OCFS2_SB(inode->i_sb),
      p_blkno, p_blocks, bhs);
  if (status < 0) {
   mlog_errno(status);
   goto bail;
  }

  for(i = 0; i < p_blocks; i++) {
   brelse(bhs[i]);
   bhs[i] = ((void*)0);
  }

  v_blkno += p_blocks;
 }

bail:
 for(i = 0; i < 32ULL; i++)
  brelse(bhs[i]);
 mlog_exit(status);
 return status;
}
