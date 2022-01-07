
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; } ;
struct ocfs2_block_check {int dummy; } ;


 int OCFS2_SB (struct super_block*) ;
 int ocfs2_block_check_compute (void*,int ,struct ocfs2_block_check*) ;
 scalar_t__ ocfs2_meta_ecc (int ) ;

void ocfs2_compute_meta_ecc(struct super_block *sb, void *data,
       struct ocfs2_block_check *bc)
{
 if (ocfs2_meta_ecc(OCFS2_SB(sb)))
  ocfs2_block_check_compute(data, sb->s_blocksize, bc);
}
