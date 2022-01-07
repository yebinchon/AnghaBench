
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; } ;
struct ocfs2_super {int osb_ecc_stats; } ;
struct ocfs2_block_check {int dummy; } ;


 struct ocfs2_super* OCFS2_SB (struct super_block*) ;
 int ocfs2_block_check_validate (void*,int ,struct ocfs2_block_check*,int *) ;
 scalar_t__ ocfs2_meta_ecc (struct ocfs2_super*) ;

int ocfs2_validate_meta_ecc(struct super_block *sb, void *data,
       struct ocfs2_block_check *bc)
{
 int rc = 0;
 struct ocfs2_super *osb = OCFS2_SB(sb);

 if (ocfs2_meta_ecc(osb))
  rc = ocfs2_block_check_validate(data, sb->s_blocksize, bc,
      &osb->osb_ecc_stats);

 return rc;
}
