
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ocfs2_extent_tree {int et_max_leaf_clusters; int et_ci; } ;


 int OCFS2_MAX_XATTR_TREE_LEAF_SIZE ;
 int ocfs2_clusters_for_bytes (struct super_block*,int ) ;
 struct super_block* ocfs2_metadata_cache_get_super (int ) ;

__attribute__((used)) static void ocfs2_xattr_tree_fill_max_leaf_clusters(struct ocfs2_extent_tree *et)
{
 struct super_block *sb = ocfs2_metadata_cache_get_super(et->et_ci);
 et->et_max_leaf_clusters =
  ocfs2_clusters_for_bytes(sb, OCFS2_MAX_XATTR_TREE_LEAF_SIZE);
}
