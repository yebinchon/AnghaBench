
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ocfs2_group_desc {int bg_check; } ;
struct ocfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;


 int BUG_ON (int) ;
 int ML_ERROR ;
 int buffer_uptodate (struct buffer_head*) ;
 int mlog (int ,char*,unsigned long long) ;
 int ocfs2_validate_gd_parent (struct super_block*,struct ocfs2_dinode*,struct buffer_head*,int) ;
 int ocfs2_validate_gd_self (struct super_block*,struct buffer_head*,int) ;
 int ocfs2_validate_meta_ecc (struct super_block*,scalar_t__,int *) ;

int ocfs2_check_group_descriptor(struct super_block *sb,
     struct ocfs2_dinode *di,
     struct buffer_head *bh)
{
 int rc;
 struct ocfs2_group_desc *gd = (struct ocfs2_group_desc *)bh->b_data;

 BUG_ON(!buffer_uptodate(bh));






 rc = ocfs2_validate_meta_ecc(sb, bh->b_data, &gd->bg_check);
 if (rc) {
  mlog(ML_ERROR,
       "Checksum failed for group descriptor %llu\n",
       (unsigned long long)bh->b_blocknr);
 } else
  rc = ocfs2_validate_gd_self(sb, bh, 1);
 if (!rc)
  rc = ocfs2_validate_gd_parent(sb, di, bh, 1);

 return rc;
}
