
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct ocfs2_super {scalar_t__ first_cluster_group_blkno; int sb; } ;


 int ocfs2_blocks_to_clusters (int ,scalar_t__) ;

__attribute__((used)) static inline u32 ocfs2_cluster_from_desc(struct ocfs2_super *osb,
       u64 bg_blkno)
{




 if (bg_blkno == osb->first_cluster_group_blkno)
  return 0;




 return ocfs2_blocks_to_clusters(osb->sb, bg_blkno);
}
