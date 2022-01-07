
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ocfs2_cached_dealloc_ctxt {struct ocfs2_cached_block_free* c_global_allocator; } ;
struct ocfs2_cached_block_free {unsigned int free_bit; struct ocfs2_cached_block_free* free_next; scalar_t__ free_blk; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 struct ocfs2_cached_block_free* kmalloc (int,int ) ;
 int mlog (int ,char*,unsigned int,unsigned long long) ;
 int mlog_errno (int) ;

int ocfs2_cache_cluster_dealloc(struct ocfs2_cached_dealloc_ctxt *ctxt,
    u64 blkno, unsigned int bit)
{
 int ret = 0;
 struct ocfs2_cached_block_free *item;

 item = kmalloc(sizeof(*item), GFP_NOFS);
 if (item == ((void*)0)) {
  ret = -ENOMEM;
  mlog_errno(ret);
  return ret;
 }

 mlog(0, "Insert clusters: (bit %u, blk %llu)\n",
      bit, (unsigned long long)blkno);

 item->free_blk = blkno;
 item->free_bit = bit;
 item->free_next = ctxt->c_global_allocator;

 ctxt->c_global_allocator = item;
 return ret;
}
