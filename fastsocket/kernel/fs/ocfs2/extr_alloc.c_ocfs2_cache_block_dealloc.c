
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ocfs2_per_slot_free_list {struct ocfs2_cached_block_free* f_first; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_cached_block_free {unsigned int free_bit; struct ocfs2_cached_block_free* free_next; scalar_t__ free_blk; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 struct ocfs2_cached_block_free* kmalloc (int,int ) ;
 int mlog (int ,char*,int,int,unsigned int,unsigned long long) ;
 int mlog_errno (int) ;
 struct ocfs2_per_slot_free_list* ocfs2_find_per_slot_free_list (int,int,struct ocfs2_cached_dealloc_ctxt*) ;

int ocfs2_cache_block_dealloc(struct ocfs2_cached_dealloc_ctxt *ctxt,
         int type, int slot, u64 blkno,
         unsigned int bit)
{
 int ret;
 struct ocfs2_per_slot_free_list *fl;
 struct ocfs2_cached_block_free *item;

 fl = ocfs2_find_per_slot_free_list(type, slot, ctxt);
 if (fl == ((void*)0)) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }

 item = kmalloc(sizeof(*item), GFP_NOFS);
 if (item == ((void*)0)) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }

 mlog(0, "Insert: (type %d, slot %u, bit %u, blk %llu)\n",
      type, slot, bit, (unsigned long long)blkno);

 item->free_blk = blkno;
 item->free_bit = bit;
 item->free_next = fl->f_first;

 fl->f_first = item;

 ret = 0;
out:
 return ret;
}
