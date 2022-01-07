
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int bitmap_data; int local_data; } ;
struct ocfs2_super {int bitmap_cpg; TYPE_1__ alloc_stats; } ;
struct ocfs2_alloc_context {scalar_t__ ac_bits_given; scalar_t__ ac_bits_wanted; scalar_t__ ac_which; int ac_inode; } ;
typedef int handle_t ;


 int BUG_ON (int) ;
 int ENOSPC ;
 int ML_ERROR ;
 scalar_t__ OCFS2_AC_USE_LOCAL ;
 scalar_t__ OCFS2_AC_USE_MAIN ;
 int atomic_inc (int *) ;
 int mlog (int ,char*,int,int) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_claim_local_alloc_bits (struct ocfs2_super*,int *,struct ocfs2_alloc_context*,unsigned int,int*,int*) ;
 int ocfs2_claim_suballoc_bits (struct ocfs2_super*,struct ocfs2_alloc_context*,int *,unsigned int,int,int *,int*,int *) ;
 int ocfs2_desc_bitmap_to_cluster_off (int ,int ,int ) ;

int __ocfs2_claim_clusters(struct ocfs2_super *osb,
      handle_t *handle,
      struct ocfs2_alloc_context *ac,
      u32 min_clusters,
      u32 max_clusters,
      u32 *cluster_start,
      u32 *num_clusters)
{
 int status;
 unsigned int bits_wanted = max_clusters;
 u64 bg_blkno = 0;
 u16 bg_bit_off;

 mlog_entry_void();

 BUG_ON(ac->ac_bits_given >= ac->ac_bits_wanted);

 BUG_ON(ac->ac_which != OCFS2_AC_USE_LOCAL
        && ac->ac_which != OCFS2_AC_USE_MAIN);

 if (ac->ac_which == OCFS2_AC_USE_LOCAL) {
  status = ocfs2_claim_local_alloc_bits(osb,
            handle,
            ac,
            bits_wanted,
            cluster_start,
            num_clusters);
  if (!status)
   atomic_inc(&osb->alloc_stats.local_data);
 } else {
  if (min_clusters > (osb->bitmap_cpg - 1)) {


   mlog(ML_ERROR, "minimum allocation requested %u exceeds "
        "group bitmap size %u!\n", min_clusters,
        osb->bitmap_cpg);
   status = -ENOSPC;
   goto bail;
  }

  if (bits_wanted > (osb->bitmap_cpg - 1))
   bits_wanted = osb->bitmap_cpg - 1;

  status = ocfs2_claim_suballoc_bits(osb,
         ac,
         handle,
         bits_wanted,
         min_clusters,
         &bg_bit_off,
         num_clusters,
         &bg_blkno);
  if (!status) {
   *cluster_start =
    ocfs2_desc_bitmap_to_cluster_off(ac->ac_inode,
         bg_blkno,
         bg_bit_off);
   atomic_inc(&osb->alloc_stats.bitmap_data);
  }
 }
 if (status < 0) {
  if (status != -ENOSPC)
   mlog_errno(status);
  goto bail;
 }

 ac->ac_bits_given += *num_clusters;

bail:
 mlog_exit(status);
 return status;
}
