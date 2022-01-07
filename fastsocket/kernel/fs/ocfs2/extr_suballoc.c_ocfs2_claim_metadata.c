
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int bg_allocs; } ;
struct ocfs2_super {TYPE_1__ alloc_stats; } ;
struct ocfs2_alloc_context {scalar_t__ ac_bits_wanted; scalar_t__ ac_bits_given; scalar_t__ ac_which; } ;
typedef int handle_t ;


 int BUG_ON (int) ;
 scalar_t__ OCFS2_AC_USE_META ;
 int atomic_inc (int *) ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_claim_suballoc_bits (struct ocfs2_super*,struct ocfs2_alloc_context*,int *,scalar_t__,int,scalar_t__*,unsigned int*,scalar_t__*) ;

int ocfs2_claim_metadata(struct ocfs2_super *osb,
    handle_t *handle,
    struct ocfs2_alloc_context *ac,
    u32 bits_wanted,
    u16 *suballoc_bit_start,
    unsigned int *num_bits,
    u64 *blkno_start)
{
 int status;
 u64 bg_blkno;

 BUG_ON(!ac);
 BUG_ON(ac->ac_bits_wanted < (ac->ac_bits_given + bits_wanted));
 BUG_ON(ac->ac_which != OCFS2_AC_USE_META);

 status = ocfs2_claim_suballoc_bits(osb,
        ac,
        handle,
        bits_wanted,
        1,
        suballoc_bit_start,
        num_bits,
        &bg_blkno);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }
 atomic_inc(&osb->alloc_stats.bg_allocs);

 *blkno_start = bg_blkno + (u64) *suballoc_bit_start;
 ac->ac_bits_given += (*num_bits);
 status = 0;
bail:
 mlog_exit(status);
 return status;
}
