
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ocfs2_group_desc {int bg_check; } ;
struct buffer_head {scalar_t__ b_data; scalar_t__ b_blocknr; } ;


 int BUG_ON (int) ;
 int buffer_uptodate (struct buffer_head*) ;
 int mlog (int ,char*,unsigned long long) ;
 int ocfs2_validate_gd_self (struct super_block*,struct buffer_head*,int ) ;
 int ocfs2_validate_meta_ecc (struct super_block*,scalar_t__,int *) ;

__attribute__((used)) static int ocfs2_validate_group_descriptor(struct super_block *sb,
        struct buffer_head *bh)
{
 int rc;
 struct ocfs2_group_desc *gd = (struct ocfs2_group_desc *)bh->b_data;

 mlog(0, "Validating group descriptor %llu\n",
      (unsigned long long)bh->b_blocknr);

 BUG_ON(!buffer_uptodate(bh));






 rc = ocfs2_validate_meta_ecc(sb, bh->b_data, &gd->bg_check);
 if (rc)
  return rc;





 return ocfs2_validate_gd_self(sb, bh, 0);
}
