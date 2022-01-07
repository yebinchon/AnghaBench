
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_extent_tree {struct ocfs2_dx_root_block* et_object; } ;
struct ocfs2_dx_root_block {int dr_clusters; } ;


 int le32_add_cpu (int *,int ) ;

__attribute__((used)) static void ocfs2_dx_root_update_clusters(struct ocfs2_extent_tree *et,
       u32 clusters)
{
 struct ocfs2_dx_root_block *dx_root = et->et_object;

 le32_add_cpu(&dx_root->dr_clusters, clusters);
}
