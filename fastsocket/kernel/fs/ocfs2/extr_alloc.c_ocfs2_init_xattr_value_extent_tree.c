
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_value_buf {int vb_access; int vb_bh; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_caching_info {int dummy; } ;


 int __ocfs2_init_extent_tree (struct ocfs2_extent_tree*,struct ocfs2_caching_info*,int ,int ,struct ocfs2_xattr_value_buf*,int *) ;
 int ocfs2_xattr_value_et_ops ;

void ocfs2_init_xattr_value_extent_tree(struct ocfs2_extent_tree *et,
     struct ocfs2_caching_info *ci,
     struct ocfs2_xattr_value_buf *vb)
{
 __ocfs2_init_extent_tree(et, ci, vb->vb_bh, vb->vb_access, vb,
     &ocfs2_xattr_value_et_ops);
}
