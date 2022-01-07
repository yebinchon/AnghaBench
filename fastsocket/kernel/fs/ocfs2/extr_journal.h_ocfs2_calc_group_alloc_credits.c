
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int OCFS2_SUBALLOC_ALLOC ;

__attribute__((used)) static inline int ocfs2_calc_group_alloc_credits(struct super_block *sb,
       unsigned int cpg)
{
 int blocks;
 int bitmap_blocks = OCFS2_SUBALLOC_ALLOC + 1;


 blocks = 1 + 1 + 1 + bitmap_blocks;
 return blocks;
}
