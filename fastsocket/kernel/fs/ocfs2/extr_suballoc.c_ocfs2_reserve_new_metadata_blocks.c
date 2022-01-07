
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_super {int slot_num; } ;
struct ocfs2_alloc_context {int ac_bits_wanted; int ac_group_search; int ac_which; } ;


 int ALLOC_NEW_GROUP ;
 int ENOMEM ;
 int ENOSPC ;
 int EXTENT_ALLOC_SYSTEM_INODE ;
 int GFP_KERNEL ;
 int OCFS2_AC_USE_META ;
 struct ocfs2_alloc_context* kzalloc (int,int ) ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_block_group_search ;
 int ocfs2_free_alloc_context (struct ocfs2_alloc_context*) ;
 int ocfs2_reserve_suballoc_bits (struct ocfs2_super*,struct ocfs2_alloc_context*,int ,int ,int *,int ) ;

int ocfs2_reserve_new_metadata_blocks(struct ocfs2_super *osb,
          int blocks,
          struct ocfs2_alloc_context **ac)
{
 int status;
 u32 slot;

 *ac = kzalloc(sizeof(struct ocfs2_alloc_context), GFP_KERNEL);
 if (!(*ac)) {
  status = -ENOMEM;
  mlog_errno(status);
  goto bail;
 }

 (*ac)->ac_bits_wanted = blocks;
 (*ac)->ac_which = OCFS2_AC_USE_META;
 slot = osb->slot_num;
 (*ac)->ac_group_search = ocfs2_block_group_search;

 status = ocfs2_reserve_suballoc_bits(osb, (*ac),
          EXTENT_ALLOC_SYSTEM_INODE,
          slot, ((void*)0), ALLOC_NEW_GROUP);
 if (status < 0) {
  if (status != -ENOSPC)
   mlog_errno(status);
  goto bail;
 }

 status = 0;
bail:
 if ((status < 0) && *ac) {
  ocfs2_free_alloc_context(*ac);
  *ac = ((void*)0);
 }

 mlog_exit(status);
 return status;
}
