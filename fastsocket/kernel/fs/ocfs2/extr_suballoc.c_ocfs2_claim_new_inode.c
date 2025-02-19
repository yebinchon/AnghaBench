
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int bg_allocs; } ;
struct ocfs2_super {TYPE_1__ alloc_stats; } ;
struct ocfs2_alloc_context {scalar_t__ ac_bits_given; int ac_bits_wanted; scalar_t__ ac_which; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int BUG_ON (int) ;
 scalar_t__ OCFS2_AC_USE_INODE ;
 int atomic_inc (int *) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_claim_suballoc_bits (struct ocfs2_super*,struct ocfs2_alloc_context*,int *,int,int,scalar_t__*,unsigned int*,scalar_t__*) ;
 int ocfs2_init_inode_ac_group (struct inode*,struct buffer_head*,struct ocfs2_alloc_context*) ;
 int ocfs2_save_inode_ac_group (struct inode*,struct ocfs2_alloc_context*) ;

int ocfs2_claim_new_inode(struct ocfs2_super *osb,
     handle_t *handle,
     struct inode *dir,
     struct buffer_head *parent_fe_bh,
     struct ocfs2_alloc_context *ac,
     u16 *suballoc_bit,
     u64 *fe_blkno)
{
 int status;
 unsigned int num_bits;
 u64 bg_blkno;

 mlog_entry_void();

 BUG_ON(!ac);
 BUG_ON(ac->ac_bits_given != 0);
 BUG_ON(ac->ac_bits_wanted != 1);
 BUG_ON(ac->ac_which != OCFS2_AC_USE_INODE);

 ocfs2_init_inode_ac_group(dir, parent_fe_bh, ac);

 status = ocfs2_claim_suballoc_bits(osb,
        ac,
        handle,
        1,
        1,
        suballoc_bit,
        &num_bits,
        &bg_blkno);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }
 atomic_inc(&osb->alloc_stats.bg_allocs);

 BUG_ON(num_bits != 1);

 *fe_blkno = bg_blkno + (u64) (*suballoc_bit);
 ac->ac_bits_given++;
 ocfs2_save_inode_ac_group(dir, ac);
 status = 0;
bail:
 mlog_exit(status);
 return status;
}
