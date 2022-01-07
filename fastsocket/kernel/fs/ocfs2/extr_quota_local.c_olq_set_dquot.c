
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ocfs2_local_disk_dqblk {void* dqb_inodemod; void* dqb_spacemod; void* dqb_id; } ;
struct TYPE_3__ {scalar_t__ dqb_curinodes; scalar_t__ dqb_curspace; } ;
struct TYPE_4__ {scalar_t__ dq_id; TYPE_1__ dq_dqb; struct super_block* dq_sb; } ;
struct ocfs2_dquot {TYPE_2__ dq_dquot; scalar_t__ dq_originodes; scalar_t__ dq_origspace; int dq_local_off; } ;
struct buffer_head {scalar_t__ b_data; } ;


 void* cpu_to_le64 (scalar_t__) ;
 int dq_data_lock ;
 scalar_t__ le64_to_cpu (void*) ;
 int mlog (int ,char*,scalar_t__,long long,long long) ;
 scalar_t__ ol_dqblk_block_offset (struct super_block*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void olq_set_dquot(struct buffer_head *bh, void *private)
{
 struct ocfs2_dquot *od = private;
 struct ocfs2_local_disk_dqblk *dqblk;
 struct super_block *sb = od->dq_dquot.dq_sb;

 dqblk = (struct ocfs2_local_disk_dqblk *)(bh->b_data
  + ol_dqblk_block_offset(sb, od->dq_local_off));

 dqblk->dqb_id = cpu_to_le64(od->dq_dquot.dq_id);
 spin_lock(&dq_data_lock);
 dqblk->dqb_spacemod = cpu_to_le64(od->dq_dquot.dq_dqb.dqb_curspace -
       od->dq_origspace);
 dqblk->dqb_inodemod = cpu_to_le64(od->dq_dquot.dq_dqb.dqb_curinodes -
       od->dq_originodes);
 spin_unlock(&dq_data_lock);
 mlog(0, "Writing local dquot %u space %lld inodes %lld\n",
      od->dq_dquot.dq_id, (long long)le64_to_cpu(dqblk->dqb_spacemod),
      (long long)le64_to_cpu(dqblk->dqb_inodemod));
}
