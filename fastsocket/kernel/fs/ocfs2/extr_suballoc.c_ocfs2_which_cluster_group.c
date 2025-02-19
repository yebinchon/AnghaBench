
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ocfs2_super {int bitmap_cpg; int first_cluster_group_blkno; } ;
struct inode {int i_sb; } ;


 int BUG_ON (int) ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int ocfs2_clusters_to_blocks (int ,int) ;
 int ocfs2_is_cluster_bitmap (struct inode*) ;

u64 ocfs2_which_cluster_group(struct inode *inode, u32 cluster)
{
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 u32 group_no;

 BUG_ON(!ocfs2_is_cluster_bitmap(inode));

 group_no = cluster / osb->bitmap_cpg;
 if (!group_no)
  return osb->first_cluster_group_blkno;
 return ocfs2_clusters_to_blocks(inode->i_sb,
     group_no * osb->bitmap_cpg);
}
