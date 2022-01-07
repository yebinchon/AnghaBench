
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_segsum_info {unsigned long nfinfo; scalar_t__ nsumblk; } ;
struct nilfs_segment_summary {int ss_bytes; } ;
struct nilfs_sb_info {int s_super; } ;
struct nilfs_recovery_block {int list; void* blkoff; void* vblocknr; scalar_t__ blocknr; void* ino; } ;
struct nilfs_finfo {int fi_ndatablk; int fi_nblocks; int fi_ino; } ;
struct nilfs_binfo_v {int bi_blkoff; int bi_vblocknr; } ;
struct list_head {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef scalar_t__ sector_t ;
typedef void* ino_t ;
typedef int __le64 ;


 int EIO ;
 int ENOMEM ;
 int GFP_NOFS ;
 int brelse (struct buffer_head*) ;
 struct nilfs_recovery_block* kmalloc (int,int ) ;
 unsigned int le16_to_cpu (int ) ;
 unsigned long le32_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;
 int list_add_tail (int *,struct list_head*) ;
 struct buffer_head* sb_bread (int ,scalar_t__) ;
 void* segsum_get (int ,struct buffer_head**,unsigned int*,int) ;
 int segsum_skip (int ,struct buffer_head**,unsigned int*,int,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
collect_blocks_from_segsum(struct nilfs_sb_info *sbi, sector_t sum_blocknr,
      struct nilfs_segsum_info *ssi,
      struct list_head *head)
{
 struct buffer_head *bh;
 unsigned int offset;
 unsigned long nfinfo = ssi->nfinfo;
 sector_t blocknr = sum_blocknr + ssi->nsumblk;
 ino_t ino;
 int err = -EIO;

 if (!nfinfo)
  return 0;

 bh = sb_bread(sbi->s_super, sum_blocknr);
 if (unlikely(!bh))
  goto out;

 offset = le16_to_cpu(
  ((struct nilfs_segment_summary *)bh->b_data)->ss_bytes);
 for (;;) {
  unsigned long nblocks, ndatablk, nnodeblk;
  struct nilfs_finfo *finfo;

  finfo = segsum_get(sbi->s_super, &bh, &offset, sizeof(*finfo));
  if (unlikely(!finfo))
   goto out;

  ino = le64_to_cpu(finfo->fi_ino);
  nblocks = le32_to_cpu(finfo->fi_nblocks);
  ndatablk = le32_to_cpu(finfo->fi_ndatablk);
  nnodeblk = nblocks - ndatablk;

  while (ndatablk-- > 0) {
   struct nilfs_recovery_block *rb;
   struct nilfs_binfo_v *binfo;

   binfo = segsum_get(sbi->s_super, &bh, &offset,
        sizeof(*binfo));
   if (unlikely(!binfo))
    goto out;

   rb = kmalloc(sizeof(*rb), GFP_NOFS);
   if (unlikely(!rb)) {
    err = -ENOMEM;
    goto out;
   }
   rb->ino = ino;
   rb->blocknr = blocknr++;
   rb->vblocknr = le64_to_cpu(binfo->bi_vblocknr);
   rb->blkoff = le64_to_cpu(binfo->bi_blkoff);

   list_add_tail(&rb->list, head);
  }
  if (--nfinfo == 0)
   break;
  blocknr += nnodeblk;
  segsum_skip(sbi->s_super, &bh, &offset, sizeof(__le64),
       nnodeblk);
  if (unlikely(!bh))
   goto out;
 }
 err = 0;
 out:
 brelse(bh);
 return err;
}
