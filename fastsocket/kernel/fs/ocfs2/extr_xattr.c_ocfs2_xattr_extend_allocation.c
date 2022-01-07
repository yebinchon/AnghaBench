
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ocfs2_xattr_value_buf {int (* vb_access ) (int *,int ,int ,int ) ;TYPE_1__* vb_xv; int vb_bh; } ;
struct ocfs2_xattr_set_ctxt {int meta_ac; int data_ac; int * handle; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct inode {int dummy; } ;
typedef int handle_t ;
typedef enum ocfs2_alloc_restarted { ____Placeholder_ocfs2_alloc_restarted } ocfs2_alloc_restarted ;
struct TYPE_2__ {int xr_clusters; } ;


 int BUG_ON (int) ;
 int INODE_CACHE (struct inode*) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int RESTART_NONE ;
 scalar_t__ le32_to_cpu (int ) ;
 int mlog (int ,char*,scalar_t__) ;
 int mlog_errno (int) ;
 int ocfs2_add_clusters_in_btree (int *,struct ocfs2_extent_tree*,scalar_t__*,scalar_t__,int ,int ,int ,int*) ;
 int ocfs2_init_xattr_value_extent_tree (struct ocfs2_extent_tree*,int ,struct ocfs2_xattr_value_buf*) ;
 int ocfs2_journal_dirty (int *,int ) ;
 int stub1 (int *,int ,int ,int ) ;

__attribute__((used)) static int ocfs2_xattr_extend_allocation(struct inode *inode,
      u32 clusters_to_add,
      struct ocfs2_xattr_value_buf *vb,
      struct ocfs2_xattr_set_ctxt *ctxt)
{
 int status = 0;
 handle_t *handle = ctxt->handle;
 enum ocfs2_alloc_restarted why;
 u32 prev_clusters, logical_start = le32_to_cpu(vb->vb_xv->xr_clusters);
 struct ocfs2_extent_tree et;

 mlog(0, "(clusters_to_add for xattr= %u)\n", clusters_to_add);

 ocfs2_init_xattr_value_extent_tree(&et, INODE_CACHE(inode), vb);

 status = vb->vb_access(handle, INODE_CACHE(inode), vb->vb_bh,
         OCFS2_JOURNAL_ACCESS_WRITE);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }

 prev_clusters = le32_to_cpu(vb->vb_xv->xr_clusters);
 status = ocfs2_add_clusters_in_btree(handle,
          &et,
          &logical_start,
          clusters_to_add,
          0,
          ctxt->data_ac,
          ctxt->meta_ac,
          &why);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }

 status = ocfs2_journal_dirty(handle, vb->vb_bh);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }

 clusters_to_add -= le32_to_cpu(vb->vb_xv->xr_clusters) - prev_clusters;





 BUG_ON(why != RESTART_NONE || clusters_to_add);

leave:

 return status;
}
