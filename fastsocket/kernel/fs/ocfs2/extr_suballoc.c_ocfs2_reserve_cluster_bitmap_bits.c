
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_alloc_context {int ac_group_search; int ac_which; } ;


 int ALLOC_NEW_GROUP ;
 int ENOSPC ;
 int GLOBAL_BITMAP_SYSTEM_INODE ;
 int OCFS2_AC_USE_MAIN ;
 int OCFS2_INVALID_SLOT ;
 int mlog_errno (int) ;
 int ocfs2_cluster_group_search ;
 int ocfs2_reserve_suballoc_bits (struct ocfs2_super*,struct ocfs2_alloc_context*,int ,int ,int *,int ) ;

int ocfs2_reserve_cluster_bitmap_bits(struct ocfs2_super *osb,
          struct ocfs2_alloc_context *ac)
{
 int status;

 ac->ac_which = OCFS2_AC_USE_MAIN;
 ac->ac_group_search = ocfs2_cluster_group_search;

 status = ocfs2_reserve_suballoc_bits(osb, ac,
          GLOBAL_BITMAP_SYSTEM_INODE,
          OCFS2_INVALID_SLOT, ((void*)0),
          ALLOC_NEW_GROUP);
 if (status < 0 && status != -ENOSPC) {
  mlog_errno(status);
  goto bail;
 }

bail:
 return status;
}
