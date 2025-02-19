
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ocfs2_group_desc {scalar_t__ bg_parent_dinode; int bg_chain; int bg_bits; } ;
struct TYPE_3__ {int cl_next_free_rec; int cl_bpc; int cl_cpg; } ;
struct TYPE_4__ {TYPE_1__ i_chain; } ;
struct ocfs2_dinode {scalar_t__ i_blkno; TYPE_2__ id2; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;


 int EINVAL ;
 int do_error (char*,unsigned long long,unsigned int,...) ;
 unsigned int le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (scalar_t__) ;

__attribute__((used)) static int ocfs2_validate_gd_parent(struct super_block *sb,
        struct ocfs2_dinode *di,
        struct buffer_head *bh,
        int clean_error)
{
 unsigned int max_bits;
 struct ocfs2_group_desc *gd = (struct ocfs2_group_desc *)bh->b_data;

 if (di->i_blkno != gd->bg_parent_dinode) {
  do_error("Group descriptor #%llu has bad parent "
    "pointer (%llu, expected %llu)",
    (unsigned long long)bh->b_blocknr,
    (unsigned long long)le64_to_cpu(gd->bg_parent_dinode),
    (unsigned long long)le64_to_cpu(di->i_blkno));
  return -EINVAL;
 }

 max_bits = le16_to_cpu(di->id2.i_chain.cl_cpg) * le16_to_cpu(di->id2.i_chain.cl_bpc);
 if (le16_to_cpu(gd->bg_bits) > max_bits) {
  do_error("Group descriptor #%llu has bit count of %u",
    (unsigned long long)bh->b_blocknr,
    le16_to_cpu(gd->bg_bits));
  return -EINVAL;
 }

 if (le16_to_cpu(gd->bg_chain) >=
     le16_to_cpu(di->id2.i_chain.cl_next_free_rec)) {
  do_error("Group descriptor #%llu has bad chain %u",
    (unsigned long long)bh->b_blocknr,
    le16_to_cpu(gd->bg_chain));
  return -EINVAL;
 }

 return 0;
}
