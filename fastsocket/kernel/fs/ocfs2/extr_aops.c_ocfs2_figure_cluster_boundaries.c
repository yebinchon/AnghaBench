
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct ocfs2_super {int s_clustersize_bits; unsigned int s_clustersize; } ;


 int BUG_ON (int) ;
 int PAGE_CACHE_SHIFT ;
 unsigned int PAGE_CACHE_SIZE ;
 unsigned int PAGE_SIZE ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ocfs2_figure_cluster_boundaries(struct ocfs2_super *osb,
         u32 cpos,
         unsigned int *start,
         unsigned int *end)
{
 unsigned int cluster_start = 0, cluster_end = PAGE_CACHE_SIZE;

 if (unlikely(PAGE_CACHE_SHIFT > osb->s_clustersize_bits)) {
  unsigned int cpp;

  cpp = 1 << (PAGE_CACHE_SHIFT - osb->s_clustersize_bits);

  cluster_start = cpos % cpp;
  cluster_start = cluster_start << osb->s_clustersize_bits;

  cluster_end = cluster_start + osb->s_clustersize;
 }

 BUG_ON(cluster_start > PAGE_SIZE);
 BUG_ON(cluster_end > PAGE_SIZE);

 if (start)
  *start = cluster_start;
 if (end)
  *end = cluster_end;
}
