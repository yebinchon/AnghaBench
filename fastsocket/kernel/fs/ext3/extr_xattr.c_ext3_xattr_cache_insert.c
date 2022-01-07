
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mb_cache_entry {int dummy; } ;
struct buffer_head {int b_blocknr; int b_bdev; } ;
typedef scalar_t__ __u32 ;
struct TYPE_2__ {int h_hash; } ;


 TYPE_1__* BHDR (struct buffer_head*) ;
 int EBUSY ;
 int GFP_NOFS ;
 int ea_bdebug (struct buffer_head*,char*,...) ;
 int ext3_xattr_cache ;
 scalar_t__ le32_to_cpu (int ) ;
 struct mb_cache_entry* mb_cache_entry_alloc (int ,int ) ;
 int mb_cache_entry_free (struct mb_cache_entry*) ;
 int mb_cache_entry_insert (struct mb_cache_entry*,int ,int ,scalar_t__*) ;
 int mb_cache_entry_release (struct mb_cache_entry*) ;

__attribute__((used)) static void
ext3_xattr_cache_insert(struct buffer_head *bh)
{
 __u32 hash = le32_to_cpu(BHDR(bh)->h_hash);
 struct mb_cache_entry *ce;
 int error;

 ce = mb_cache_entry_alloc(ext3_xattr_cache, GFP_NOFS);
 if (!ce) {
  ea_bdebug(bh, "out of memory");
  return;
 }
 error = mb_cache_entry_insert(ce, bh->b_bdev, bh->b_blocknr, &hash);
 if (error) {
  mb_cache_entry_free(ce);
  if (error == -EBUSY) {
   ea_bdebug(bh, "already in cache");
   error = 0;
  }
 } else {
  ea_bdebug(bh, "inserting [%x]", (int)hash);
  mb_cache_entry_release(ce);
 }
}
