
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ocfs2_group_desc {int bg_signature; int bg_size; int bg_bits; int bg_free_bits_count; int bg_generation; int bg_blkno; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
struct TYPE_2__ {int fs_generation; } ;


 int EINVAL ;
 int OCFS2_IS_VALID_GROUP_DESC (struct ocfs2_group_desc*) ;
 TYPE_1__* OCFS2_SB (struct super_block*) ;
 int do_error (char*,unsigned long long,int,...) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;

__attribute__((used)) static int ocfs2_validate_gd_self(struct super_block *sb,
      struct buffer_head *bh,
      int clean_error)
{
 struct ocfs2_group_desc *gd = (struct ocfs2_group_desc *)bh->b_data;

 if (!OCFS2_IS_VALID_GROUP_DESC(gd)) {
  do_error("Group descriptor #%llu has bad signature %.*s",
    (unsigned long long)bh->b_blocknr, 7,
    gd->bg_signature);
  return -EINVAL;
 }

 if (le64_to_cpu(gd->bg_blkno) != bh->b_blocknr) {
  do_error("Group descriptor #%llu has an invalid bg_blkno "
    "of %llu",
    (unsigned long long)bh->b_blocknr,
    (unsigned long long)le64_to_cpu(gd->bg_blkno));
  return -EINVAL;
 }

 if (le32_to_cpu(gd->bg_generation) != OCFS2_SB(sb)->fs_generation) {
  do_error("Group descriptor #%llu has an invalid "
    "fs_generation of #%u",
    (unsigned long long)bh->b_blocknr,
    le32_to_cpu(gd->bg_generation));
  return -EINVAL;
 }

 if (le16_to_cpu(gd->bg_free_bits_count) > le16_to_cpu(gd->bg_bits)) {
  do_error("Group descriptor #%llu has bit count %u but "
    "claims that %u are free",
    (unsigned long long)bh->b_blocknr,
    le16_to_cpu(gd->bg_bits),
    le16_to_cpu(gd->bg_free_bits_count));
  return -EINVAL;
 }

 if (le16_to_cpu(gd->bg_bits) > (8 * le16_to_cpu(gd->bg_size))) {
  do_error("Group descriptor #%llu has bit count %u but "
    "max bitmap bits of %u",
    (unsigned long long)bh->b_blocknr,
    le16_to_cpu(gd->bg_bits),
    8 * le16_to_cpu(gd->bg_size));
  return -EINVAL;
 }

 return 0;
}
