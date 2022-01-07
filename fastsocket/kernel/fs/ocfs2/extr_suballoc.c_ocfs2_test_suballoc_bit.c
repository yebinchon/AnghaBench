
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u16 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_group_desc {scalar_t__ bg_bitmap; } ;
struct TYPE_2__ {int i_chain; } ;
struct ocfs2_dinode {TYPE_1__ id2; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int EINVAL ;
 int ML_ERROR ;
 int brelse (struct buffer_head*) ;
 int mlog (int ,char*,unsigned long long,int) ;
 int mlog_entry (char*,unsigned long long,unsigned int) ;
 int mlog_exit (int) ;
 int ocfs2_bits_per_group (int *) ;
 int ocfs2_read_group_descriptor (struct inode*,struct ocfs2_dinode*,scalar_t__,struct buffer_head**) ;
 int ocfs2_test_bit (scalar_t__,unsigned long*) ;
 scalar_t__ ocfs2_which_suballoc_group (scalar_t__,scalar_t__) ;

__attribute__((used)) static int ocfs2_test_suballoc_bit(struct ocfs2_super *osb,
       struct inode *suballoc,
       struct buffer_head *alloc_bh, u64 blkno,
       u16 bit, int *res)
{
 struct ocfs2_dinode *alloc_fe;
 struct ocfs2_group_desc *group;
 struct buffer_head *group_bh = ((void*)0);
 u64 bg_blkno;
 int status;

 mlog_entry("blkno: %llu bit: %u\n", (unsigned long long)blkno,
     (unsigned int)bit);

 alloc_fe = (struct ocfs2_dinode *)alloc_bh->b_data;
 if ((bit + 1) > ocfs2_bits_per_group(&alloc_fe->id2.i_chain)) {
  mlog(ML_ERROR, "suballoc bit %u out of range of %u\n",
       (unsigned int)bit,
       ocfs2_bits_per_group(&alloc_fe->id2.i_chain));
  status = -EINVAL;
  goto bail;
 }

 bg_blkno = ocfs2_which_suballoc_group(blkno, bit);
 status = ocfs2_read_group_descriptor(suballoc, alloc_fe, bg_blkno,
          &group_bh);
 if (status < 0) {
  mlog(ML_ERROR, "read group %llu failed %d\n",
       (unsigned long long)bg_blkno, status);
  goto bail;
 }

 group = (struct ocfs2_group_desc *) group_bh->b_data;
 *res = ocfs2_test_bit(bit, (unsigned long *)group->bg_bitmap);

bail:
 brelse(group_bh);

 mlog_exit(status);
 return status;
}
