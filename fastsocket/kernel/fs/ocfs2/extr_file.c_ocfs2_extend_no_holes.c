
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct ocfs2_inode_info {scalar_t__ ip_clusters; } ;
struct inode {int i_sb; } ;


 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int __ocfs2_extend_allocation (struct inode*,scalar_t__,scalar_t__,int ) ;
 int mlog_errno (int) ;
 scalar_t__ ocfs2_clusters_for_bytes (int ,int ) ;
 int ocfs2_zero_extend (struct inode*,int ) ;

int ocfs2_extend_no_holes(struct inode *inode, u64 new_i_size, u64 zero_to)
{
 int ret;
 u32 clusters_to_add;
 struct ocfs2_inode_info *oi = OCFS2_I(inode);

 clusters_to_add = ocfs2_clusters_for_bytes(inode->i_sb, new_i_size);
 if (clusters_to_add < oi->ip_clusters)
  clusters_to_add = 0;
 else
  clusters_to_add -= oi->ip_clusters;

 if (clusters_to_add) {
  ret = __ocfs2_extend_allocation(inode, oi->ip_clusters,
      clusters_to_add, 0);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }






 ret = ocfs2_zero_extend(inode, zero_to);
 if (ret < 0)
  mlog_errno(ret);

out:
 return ret;
}
