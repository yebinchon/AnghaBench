
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct the_nilfs {scalar_t__ ns_last_pseg; int ns_mount_state; void* ns_last_cno; void* ns_seg_seq; void* ns_last_seq; void* ns_nextnum; int ns_ctime; void* ns_cno; void* ns_segnum; scalar_t__ ns_pseg_offset; } ;
struct nilfs_segsum_info {scalar_t__ nblocks; scalar_t__ next; int ctime; } ;
struct nilfs_sb_info {int dummy; } ;
struct TYPE_2__ {int prev; } ;
struct nilfs_recovery_info {void* ri_cno; TYPE_1__ ri_used_segments; int ri_need_recovery; scalar_t__ ri_lsegs_end; scalar_t__ ri_lsegs_start; scalar_t__ ri_super_root; void* ri_lsegs_start_seq; void* ri_nextnum; void* ri_segnum; void* ri_seq; scalar_t__ ri_pseg_start; } ;
typedef scalar_t__ sector_t ;
typedef void* __u64 ;


 int LIST_HEAD (int ) ;
 int NILFS_RECOVERY_SR_UPDATED ;
 int NILFS_SEG_FAIL_CONSISTENCY ;
 int NILFS_SEG_FAIL_IO ;
 int NILFS_SEG_HAS_SR (struct nilfs_segsum_info*) ;
 scalar_t__ NILFS_SEG_LOGBGN (struct nilfs_segsum_info*) ;
 scalar_t__ NILFS_SEG_LOGEND (struct nilfs_segsum_info*) ;
 int NILFS_VALID_FS ;
 int list_splice (int *,int ) ;
 int load_segment_summary (struct nilfs_sb_info*,scalar_t__,void*,struct nilfs_segsum_info*,int) ;
 int nilfs_dispose_segment_list (int *) ;
 int nilfs_get_segment_range (struct the_nilfs*,void*,scalar_t__*,scalar_t__*) ;
 void* nilfs_get_segnum_of_block (struct the_nilfs*,scalar_t__) ;
 int nilfs_segment_list_add (int *,void*) ;
 int nilfs_warn_segment_error (int) ;
 int segments ;
 scalar_t__ unlikely (int) ;

int nilfs_search_super_root(struct the_nilfs *nilfs, struct nilfs_sb_info *sbi,
       struct nilfs_recovery_info *ri)
{
 struct nilfs_segsum_info ssi;
 sector_t pseg_start, pseg_end, sr_pseg_start = 0;
 sector_t seg_start, seg_end;
 u64 seg_seq;
 __u64 segnum, nextnum = 0;
 __u64 cno;
 LIST_HEAD(segments);
 int empty_seg = 0, scan_newer = 0;
 int ret;

 pseg_start = nilfs->ns_last_pseg;
 seg_seq = nilfs->ns_last_seq;
 cno = nilfs->ns_last_cno;
 segnum = nilfs_get_segnum_of_block(nilfs, pseg_start);


 nilfs_get_segment_range(nilfs, segnum, &seg_start, &seg_end);

 for (;;) {

  ret = load_segment_summary(sbi, pseg_start, seg_seq, &ssi, 1);
  if (ret) {
   if (ret == NILFS_SEG_FAIL_IO)
    goto failed;
   goto strayed;
  }
  pseg_end = pseg_start + ssi.nblocks - 1;
  if (unlikely(pseg_end > seg_end)) {
   ret = NILFS_SEG_FAIL_CONSISTENCY;
   goto strayed;
  }


  ri->ri_pseg_start = pseg_start;
  ri->ri_seq = seg_seq;
  ri->ri_segnum = segnum;
  nextnum = nilfs_get_segnum_of_block(nilfs, ssi.next);
  ri->ri_nextnum = nextnum;
  empty_seg = 0;

  if (!NILFS_SEG_HAS_SR(&ssi)) {
   if (!scan_newer) {



    ret = NILFS_SEG_FAIL_CONSISTENCY;
    goto failed;
   }
   if (!ri->ri_lsegs_start && NILFS_SEG_LOGBGN(&ssi)) {
    ri->ri_lsegs_start = pseg_start;
    ri->ri_lsegs_start_seq = seg_seq;
   }
   if (NILFS_SEG_LOGEND(&ssi))
    ri->ri_lsegs_end = pseg_start;
   goto try_next_pseg;
  }


  ri->ri_cno = cno++;
  ri->ri_super_root = pseg_end;
  ri->ri_lsegs_start = ri->ri_lsegs_end = 0;

  nilfs_dispose_segment_list(&segments);
  nilfs->ns_pseg_offset = (sr_pseg_start = pseg_start)
   + ssi.nblocks - seg_start;
  nilfs->ns_seg_seq = seg_seq;
  nilfs->ns_segnum = segnum;
  nilfs->ns_cno = cno;
  nilfs->ns_ctime = ssi.ctime;
  nilfs->ns_nextnum = nextnum;

  if (scan_newer)
   ri->ri_need_recovery = NILFS_RECOVERY_SR_UPDATED;
  else {
   if (nilfs->ns_mount_state & NILFS_VALID_FS)
    goto super_root_found;
   scan_newer = 1;
  }


  pseg_start += ssi.nblocks;
  if (pseg_start < seg_end)
   continue;
  goto feed_segment;

 try_next_pseg:

  pseg_start += ssi.nblocks;
  if (pseg_start < seg_end)
   continue;
  goto feed_segment;

 strayed:

  if (!scan_newer)




   goto failed;

 feed_segment:

  if (empty_seg++)
   goto super_root_found;

  ret = nilfs_segment_list_add(&segments, segnum);
  if (unlikely(ret))
   goto failed;

  seg_seq++;
  segnum = nextnum;
  nilfs_get_segment_range(nilfs, segnum, &seg_start, &seg_end);
  pseg_start = seg_start;
 }

 super_root_found:

 list_splice(&segments, ri->ri_used_segments.prev);
 nilfs->ns_last_pseg = sr_pseg_start;
 nilfs->ns_last_seq = nilfs->ns_seg_seq;
 nilfs->ns_last_cno = ri->ri_cno;
 return 0;

 failed:
 nilfs_dispose_segment_list(&segments);
 return (ret < 0) ? ret : nilfs_warn_segment_error(ret);
}
