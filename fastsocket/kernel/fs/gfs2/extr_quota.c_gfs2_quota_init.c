
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {unsigned int sb_bsize_shift; int sb_bsize; } ;
struct gfs2_sbd {unsigned int sd_quota_slots; unsigned int sd_qc_per_block; unsigned int sd_quota_chunks; int sd_quota_count; int sd_quota_list; int * sd_quota_bitmap; TYPE_1__ sd_sb; int sd_qc_inode; } ;
struct gfs2_quota_data {unsigned int qd_slot; int qd_slot_count; int qd_list; scalar_t__ qd_change; int qd_flags; } ;
struct gfs2_quota_change_host {int qc_flags; scalar_t__ qc_change; int qc_id; } ;
struct gfs2_quota_change {int dummy; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_inode {int i_gl; int i_inode; } ;
struct buffer_head {scalar_t__ b_data; } ;


 unsigned int DIV_ROUND_UP (unsigned int,int) ;
 int EIO ;
 int ENOMEM ;
 int GFP_NOFS ;
 struct gfs2_inode* GFS2_I (int ) ;
 int GFS2_METATYPE_QC ;
 int GFS2_QCF_USER ;
 int PAGE_SIZE ;
 int QDF_CHANGE ;
 int atomic_inc (int *) ;
 int brelse (struct buffer_head*) ;
 int fs_info (struct gfs2_sbd*,char*,unsigned int) ;
 int gfs2_consist_inode (struct gfs2_inode*) ;
 int gfs2_extent_map (int *,unsigned int,int*,int *,scalar_t__*) ;
 int gfs2_icbit_munge (struct gfs2_sbd*,int *,unsigned int,int) ;
 struct buffer_head* gfs2_meta_ra (int ,int ,scalar_t__) ;
 scalar_t__ gfs2_metatype_check (struct gfs2_sbd*,struct buffer_head*,int ) ;
 int gfs2_quota_change_in (struct gfs2_quota_change_host*,scalar_t__) ;
 int gfs2_quota_cleanup (struct gfs2_sbd*) ;
 unsigned int i_size_read (int *) ;
 int * kcalloc (unsigned int,int,int ) ;
 int kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int qd_alloc (struct gfs2_sbd*,int,int ,struct gfs2_quota_data**) ;
 int qd_lru_lock ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int gfs2_quota_init(struct gfs2_sbd *sdp)
{
 struct gfs2_inode *ip = GFS2_I(sdp->sd_qc_inode);
 unsigned int disksize = i_size_read(&ip->i_inode);
 unsigned int blocks = disksize >> sdp->sd_sb.sb_bsize_shift;
 unsigned int x, slot = 0;
 unsigned int found = 0;
 u64 dblock;
 u32 extlen = 0;
 int error;

 if (!disksize || disksize > (64 << 20) ||
     disksize & (sdp->sd_sb.sb_bsize - 1)) {
  gfs2_consist_inode(ip);
  return -EIO;
 }
 sdp->sd_quota_slots = blocks * sdp->sd_qc_per_block;
 sdp->sd_quota_chunks = DIV_ROUND_UP(sdp->sd_quota_slots, 8 * PAGE_SIZE);

 error = -ENOMEM;

 sdp->sd_quota_bitmap = kcalloc(sdp->sd_quota_chunks,
           sizeof(unsigned char *), GFP_NOFS);
 if (!sdp->sd_quota_bitmap)
  return error;

 for (x = 0; x < sdp->sd_quota_chunks; x++) {
  sdp->sd_quota_bitmap[x] = kzalloc(PAGE_SIZE, GFP_NOFS);
  if (!sdp->sd_quota_bitmap[x])
   goto fail;
 }

 for (x = 0; x < blocks; x++) {
  struct buffer_head *bh;
  unsigned int y;

  if (!extlen) {
   int new = 0;
   error = gfs2_extent_map(&ip->i_inode, x, &new, &dblock, &extlen);
   if (error)
    goto fail;
  }
  error = -EIO;
  bh = gfs2_meta_ra(ip->i_gl, dblock, extlen);
  if (!bh)
   goto fail;
  if (gfs2_metatype_check(sdp, bh, GFS2_METATYPE_QC)) {
   brelse(bh);
   goto fail;
  }

  for (y = 0; y < sdp->sd_qc_per_block && slot < sdp->sd_quota_slots;
       y++, slot++) {
   struct gfs2_quota_change_host qc;
   struct gfs2_quota_data *qd;

   gfs2_quota_change_in(&qc, bh->b_data +
       sizeof(struct gfs2_meta_header) +
       y * sizeof(struct gfs2_quota_change));
   if (!qc.qc_change)
    continue;

   error = qd_alloc(sdp, (qc.qc_flags & GFS2_QCF_USER),
      qc.qc_id, &qd);
   if (error) {
    brelse(bh);
    goto fail;
   }

   set_bit(QDF_CHANGE, &qd->qd_flags);
   qd->qd_change = qc.qc_change;
   qd->qd_slot = slot;
   qd->qd_slot_count = 1;

   spin_lock(&qd_lru_lock);
   gfs2_icbit_munge(sdp, sdp->sd_quota_bitmap, slot, 1);
   list_add(&qd->qd_list, &sdp->sd_quota_list);
   atomic_inc(&sdp->sd_quota_count);
   spin_unlock(&qd_lru_lock);

   found++;
  }

  brelse(bh);
  dblock++;
  extlen--;
 }

 if (found)
  fs_info(sdp, "found %u quota changes\n", found);

 return 0;

fail:
 gfs2_quota_cleanup(sdp);
 return error;
}
