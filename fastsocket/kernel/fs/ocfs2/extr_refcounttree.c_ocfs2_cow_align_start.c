
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int BUG_ON (int) ;
 unsigned int ocfs2_cow_contig_mask (struct super_block*) ;

__attribute__((used)) static inline unsigned int ocfs2_cow_align_start(struct super_block *sb,
       unsigned int start,
       unsigned int cpos)
{
 BUG_ON(start > cpos);

 return start + ((cpos - start) & ocfs2_cow_contig_mask(sb));
}
