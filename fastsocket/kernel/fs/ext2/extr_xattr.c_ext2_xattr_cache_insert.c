
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mb_cache_entry {int dummy; } ;
struct buffer_head {int b_blocknr; int b_bdev; } ;
typedef scalar_t__ __u32 ;
struct TYPE_5__ {int h_hash; } ;
struct TYPE_4__ {int c_entry_count; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_NOFS ;
 TYPE_3__* HDR (struct buffer_head*) ;
 int atomic_read (int *) ;
 int ea_bdebug (struct buffer_head*,char*,int,...) ;
 TYPE_1__* ext2_xattr_cache ;
 scalar_t__ le32_to_cpu (int ) ;
 struct mb_cache_entry* mb_cache_entry_alloc (TYPE_1__*,int ) ;
 int mb_cache_entry_free (struct mb_cache_entry*) ;
 int mb_cache_entry_insert (struct mb_cache_entry*,int ,int ,scalar_t__*) ;
 int mb_cache_entry_release (struct mb_cache_entry*) ;

__attribute__((used)) static int
ext2_xattr_cache_insert(struct buffer_head *bh)
{
 __u32 hash = le32_to_cpu(HDR(bh)->h_hash);
 struct mb_cache_entry *ce;
 int error;

 ce = mb_cache_entry_alloc(ext2_xattr_cache, GFP_NOFS);
 if (!ce)
  return -ENOMEM;
 error = mb_cache_entry_insert(ce, bh->b_bdev, bh->b_blocknr, &hash);
 if (error) {
  mb_cache_entry_free(ce);
  if (error == -EBUSY) {
   ea_bdebug(bh, "already in cache (%d cache entries)",
    atomic_read(&ext2_xattr_cache->c_entry_count));
   error = 0;
  }
 } else {
  ea_bdebug(bh, "inserting [%x] (%d cache entries)", (int)hash,
     atomic_read(&ext2_xattr_cache->c_entry_count));
  mb_cache_entry_release(ce);
 }
 return error;
}
