
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ocfs2_block_check {int dummy; } ;
struct buffer_head {int dummy; } ;


 int OCFS2_SB (struct super_block*) ;
 int ocfs2_block_check_compute_bhs (struct buffer_head**,int,struct ocfs2_block_check*) ;
 scalar_t__ ocfs2_meta_ecc (int ) ;

void ocfs2_compute_meta_ecc_bhs(struct super_block *sb,
    struct buffer_head **bhs, int nr,
    struct ocfs2_block_check *bc)
{
 if (ocfs2_meta_ecc(OCFS2_SB(sb)))
  ocfs2_block_check_compute_bhs(bhs, nr, bc);
}
