
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ocfs2_super {int sb; } ;
struct ocfs2_local_alloc {void* la_bitmap; int la_bm_off; } ;
struct TYPE_3__ {int i_total; int i_used; } ;
struct TYPE_4__ {TYPE_1__ bitmap1; } ;
struct ocfs2_dinode {TYPE_2__ id1; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 struct ocfs2_local_alloc* OCFS2_LOCAL_ALLOC (struct ocfs2_dinode*) ;
 int le32_to_cpu (int ) ;
 int mlog (int ,char*,...) ;
 int mlog_entry (char*,int,int) ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 scalar_t__ ocfs2_clusters_to_blocks (int ,int) ;
 int ocfs2_find_next_zero_bit (void*,int,int) ;
 int ocfs2_free_clusters (int *,struct inode*,struct buffer_head*,scalar_t__,int) ;

__attribute__((used)) static int ocfs2_sync_local_to_main(struct ocfs2_super *osb,
        handle_t *handle,
        struct ocfs2_dinode *alloc,
        struct inode *main_bm_inode,
        struct buffer_head *main_bm_bh)
{
 int status = 0;
 int bit_off, left, count, start;
 u64 la_start_blk;
 u64 blkno;
 void *bitmap;
 struct ocfs2_local_alloc *la = OCFS2_LOCAL_ALLOC(alloc);

 mlog_entry("total = %u, used = %u\n",
     le32_to_cpu(alloc->id1.bitmap1.i_total),
     le32_to_cpu(alloc->id1.bitmap1.i_used));

 if (!alloc->id1.bitmap1.i_total) {
  mlog(0, "nothing to sync!\n");
  goto bail;
 }

 if (le32_to_cpu(alloc->id1.bitmap1.i_used) ==
     le32_to_cpu(alloc->id1.bitmap1.i_total)) {
  mlog(0, "all bits were taken!\n");
  goto bail;
 }

 la_start_blk = ocfs2_clusters_to_blocks(osb->sb,
      le32_to_cpu(la->la_bm_off));
 bitmap = la->la_bitmap;
 start = count = bit_off = 0;
 left = le32_to_cpu(alloc->id1.bitmap1.i_total);

 while ((bit_off = ocfs2_find_next_zero_bit(bitmap, left, start))
        != -1) {
  if ((bit_off < left) && (bit_off == start)) {
   count++;
   start++;
   continue;
  }
  if (count) {
   blkno = la_start_blk +
    ocfs2_clusters_to_blocks(osb->sb,
        start - count);

   mlog(0, "freeing %u bits starting at local alloc bit "
        "%u (la_start_blk = %llu, blkno = %llu)\n",
        count, start - count,
        (unsigned long long)la_start_blk,
        (unsigned long long)blkno);

   status = ocfs2_free_clusters(handle, main_bm_inode,
           main_bm_bh, blkno, count);
   if (status < 0) {
    mlog_errno(status);
    goto bail;
   }
  }
  if (bit_off >= left)
   break;
  count = 1;
  start = bit_off + 1;
 }

bail:
 mlog_exit(status);
 return status;
}
