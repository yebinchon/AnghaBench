
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
typedef enum ocfs2_alloc_restarted { ____Placeholder_ocfs2_alloc_restarted } ocfs2_alloc_restarted ;


 int INODE_CACHE (struct inode*) ;
 int ocfs2_add_clusters_in_btree (int *,struct ocfs2_extent_tree*,int *,int ,int,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*,int*) ;
 int ocfs2_init_dinode_extent_tree (struct ocfs2_extent_tree*,int ,struct buffer_head*) ;

int ocfs2_add_inode_data(struct ocfs2_super *osb,
    struct inode *inode,
    u32 *logical_offset,
    u32 clusters_to_add,
    int mark_unwritten,
    struct buffer_head *fe_bh,
    handle_t *handle,
    struct ocfs2_alloc_context *data_ac,
    struct ocfs2_alloc_context *meta_ac,
    enum ocfs2_alloc_restarted *reason_ret)
{
 int ret;
 struct ocfs2_extent_tree et;

 ocfs2_init_dinode_extent_tree(&et, INODE_CACHE(inode), fe_bh);
 ret = ocfs2_add_clusters_in_btree(handle, &et, logical_offset,
       clusters_to_add, mark_unwritten,
       data_ac, meta_ac, reason_ret);

 return ret;
}
