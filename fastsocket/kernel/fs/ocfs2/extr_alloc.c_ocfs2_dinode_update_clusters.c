
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_inode_info {int ip_lock; int ip_clusters; } ;
struct ocfs2_extent_tree {struct ocfs2_dinode* et_object; int et_ci; } ;
struct ocfs2_dinode {int i_clusters; } ;


 struct ocfs2_inode_info* cache_info_to_inode (int ) ;
 int le32_add_cpu (int *,int ) ;
 int le32_to_cpu (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ocfs2_dinode_update_clusters(struct ocfs2_extent_tree *et,
      u32 clusters)
{
 struct ocfs2_inode_info *oi = cache_info_to_inode(et->et_ci);
 struct ocfs2_dinode *di = et->et_object;

 le32_add_cpu(&di->i_clusters, clusters);
 spin_lock(&oi->ip_lock);
 oi->ip_clusters = le32_to_cpu(di->i_clusters);
 spin_unlock(&oi->ip_lock);
}
