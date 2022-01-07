
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_super {int s_clustersize; } ;
struct inode {int i_sb; struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef int loff_t ;


 struct ocfs2_super* OCFS2_SB (int ) ;
 scalar_t__ ocfs2_align_bytes_to_clusters (int ,int) ;
 int truncate_inode_pages_range (struct address_space*,int,int) ;
 int unmap_mapping_range (struct address_space*,int,int,int ) ;

__attribute__((used)) static void ocfs2_truncate_cluster_pages(struct inode *inode, u64 byte_start,
      u64 byte_len)
{
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 loff_t start, end;
 struct address_space *mapping = inode->i_mapping;

 start = (loff_t)ocfs2_align_bytes_to_clusters(inode->i_sb, byte_start);
 end = byte_start + byte_len;
 end = end & ~(osb->s_clustersize - 1);

 if (start < end) {
  unmap_mapping_range(mapping, start, end - start, 0);
  truncate_inode_pages_range(mapping, start, end - 1);
 }
}
