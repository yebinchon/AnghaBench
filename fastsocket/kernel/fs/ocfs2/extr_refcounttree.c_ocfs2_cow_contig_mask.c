
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int ocfs2_cow_contig_clusters (struct super_block*) ;

__attribute__((used)) static inline unsigned int ocfs2_cow_contig_mask(struct super_block *sb)
{
 return ~(ocfs2_cow_contig_clusters(sb) - 1);
}
