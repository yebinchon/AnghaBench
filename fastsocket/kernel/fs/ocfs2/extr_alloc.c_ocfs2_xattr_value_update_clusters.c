
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ocfs2_xattr_value_buf {TYPE_1__* vb_xv; } ;
struct ocfs2_extent_tree {struct ocfs2_xattr_value_buf* et_object; } ;
struct TYPE_2__ {int xr_clusters; } ;


 int le32_add_cpu (int *,int ) ;

__attribute__((used)) static void ocfs2_xattr_value_update_clusters(struct ocfs2_extent_tree *et,
           u32 clusters)
{
 struct ocfs2_xattr_value_buf *vb = et->et_object;

 le32_add_cpu(&vb->vb_xv->xr_clusters, clusters);
}
