
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ocfs2_refcount_block {int rf_fs_generation; int rf_blkno; int rf_signature; int rf_check; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
struct TYPE_2__ {unsigned long long fs_generation; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ML_ERROR ;
 int OCFS2_IS_VALID_REFCOUNT_BLOCK (struct ocfs2_refcount_block*) ;
 TYPE_1__* OCFS2_SB (struct super_block*) ;
 int buffer_uptodate (struct buffer_head*) ;
 unsigned long long le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog (int ,char*,unsigned long long) ;
 int ocfs2_error (struct super_block*,char*,unsigned long long,unsigned long long,...) ;
 int ocfs2_validate_meta_ecc (struct super_block*,scalar_t__,int *) ;

__attribute__((used)) static int ocfs2_validate_refcount_block(struct super_block *sb,
      struct buffer_head *bh)
{
 int rc;
 struct ocfs2_refcount_block *rb =
  (struct ocfs2_refcount_block *)bh->b_data;

 mlog(0, "Validating refcount block %llu\n",
      (unsigned long long)bh->b_blocknr);

 BUG_ON(!buffer_uptodate(bh));






 rc = ocfs2_validate_meta_ecc(sb, bh->b_data, &rb->rf_check);
 if (rc) {
  mlog(ML_ERROR, "Checksum failed for refcount block %llu\n",
       (unsigned long long)bh->b_blocknr);
  return rc;
 }


 if (!OCFS2_IS_VALID_REFCOUNT_BLOCK(rb)) {
  ocfs2_error(sb,
       "Refcount block #%llu has bad signature %.*s",
       (unsigned long long)bh->b_blocknr, 7,
       rb->rf_signature);
  return -EINVAL;
 }

 if (le64_to_cpu(rb->rf_blkno) != bh->b_blocknr) {
  ocfs2_error(sb,
       "Refcount block #%llu has an invalid rf_blkno "
       "of %llu",
       (unsigned long long)bh->b_blocknr,
       (unsigned long long)le64_to_cpu(rb->rf_blkno));
  return -EINVAL;
 }

 if (le32_to_cpu(rb->rf_fs_generation) != OCFS2_SB(sb)->fs_generation) {
  ocfs2_error(sb,
       "Refcount block #%llu has an invalid "
       "rf_fs_generation of #%u",
       (unsigned long long)bh->b_blocknr,
       le32_to_cpu(rb->rf_fs_generation));
  return -EINVAL;
 }

 return 0;
}
