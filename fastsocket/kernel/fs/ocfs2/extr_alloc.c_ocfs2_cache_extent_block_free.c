
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_extent_block {int h_suballoc_bit; int h_blkno; int h_suballoc_slot; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;


 int EXTENT_ALLOC_SYSTEM_INODE ;
 int le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int ocfs2_cache_block_dealloc (struct ocfs2_cached_dealloc_ctxt*,int ,int ,int ,int ) ;

__attribute__((used)) static int ocfs2_cache_extent_block_free(struct ocfs2_cached_dealloc_ctxt *ctxt,
      struct ocfs2_extent_block *eb)
{
 return ocfs2_cache_block_dealloc(ctxt, EXTENT_ALLOC_SYSTEM_INODE,
      le16_to_cpu(eb->h_suballoc_slot),
      le64_to_cpu(eb->h_blkno),
      le16_to_cpu(eb->h_suballoc_bit));
}
