
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct page {TYPE_3__* mapping; } ;
struct io_failure_record {scalar_t__ start; int len; int this_mirror; int in_validation; int logical; int failed_mirror; scalar_t__ bio_flags; } ;
struct inode {int dummy; } ;
struct extent_state {scalar_t__ start; } ;
struct extent_map_tree {int lock; } ;
struct extent_map {scalar_t__ start; scalar_t__ len; scalar_t__ block_start; int compress_type; int flags; } ;
struct extent_io_tree {TYPE_2__* ops; int lock; } ;
struct bio {int bi_rw; int bi_vcnt; int bi_sector; scalar_t__ bi_size; int bi_bdev; int bi_end_io; struct extent_state* bi_private; } ;
struct TYPE_12__ {TYPE_5__* root; struct extent_map_tree extent_tree; struct extent_io_tree io_tree; struct extent_io_tree io_failure_tree; } ;
struct TYPE_11__ {TYPE_4__* fs_info; } ;
struct TYPE_10__ {TYPE_1__* fs_devices; int mapping_tree; } ;
struct TYPE_9__ {struct inode* host; } ;
struct TYPE_8__ {int (* submit_bio_hook ) (struct inode*,int,struct bio*,scalar_t__,scalar_t__,int ) ;} ;
struct TYPE_7__ {int latest_bdev; } ;


 TYPE_6__* BTRFS_I (struct inode*) ;
 int BUG_ON (int) ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ EXTENT_BIO_COMPRESSED ;
 int EXTENT_DAMAGED ;
 int EXTENT_DIRTY ;
 int EXTENT_FLAG_COMPRESSED ;
 int EXTENT_LOCKED ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct extent_map*) ;
 int READ_SYNC ;
 int REQ_FAILFAST_DEV ;
 int REQ_WRITE ;
 int bio_add_page (struct bio*,struct page*,int,scalar_t__) ;
 struct bio* bio_alloc (int ,int) ;
 int btrfs_num_copies (int *,int,int) ;
 int extent_set_compress_type (scalar_t__*,int ) ;
 struct extent_state* find_first_extent_bit_state (struct extent_io_tree*,scalar_t__,int) ;
 int free_extent_map (struct extent_map*) ;
 int free_io_failure (struct inode*,struct io_failure_record*,int ) ;
 int get_state_private (struct extent_io_tree*,scalar_t__,scalar_t__*) ;
 int kfree (struct io_failure_record*) ;
 struct io_failure_record* kzalloc (int,int ) ;
 struct extent_map* lookup_extent_mapping (struct extent_map_tree*,scalar_t__,int) ;
 scalar_t__ page_offset (struct page*) ;
 int pr_debug (char*,...) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int set_extent_bits (struct extent_io_tree*,scalar_t__,scalar_t__,int,int ) ;
 int set_state_private (struct extent_io_tree*,scalar_t__,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct inode*,int,struct bio*,scalar_t__,scalar_t__,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int bio_readpage_error(struct bio *failed_bio, struct page *page,
    u64 start, u64 end, int failed_mirror,
    struct extent_state *state)
{
 struct io_failure_record *failrec = ((void*)0);
 u64 private;
 struct extent_map *em;
 struct inode *inode = page->mapping->host;
 struct extent_io_tree *failure_tree = &BTRFS_I(inode)->io_failure_tree;
 struct extent_io_tree *tree = &BTRFS_I(inode)->io_tree;
 struct extent_map_tree *em_tree = &BTRFS_I(inode)->extent_tree;
 struct bio *bio;
 int num_copies;
 int ret;
 int read_mode;
 u64 logical;

 BUG_ON(failed_bio->bi_rw & REQ_WRITE);

 ret = get_state_private(failure_tree, start, &private);
 if (ret) {
  failrec = kzalloc(sizeof(*failrec), GFP_NOFS);
  if (!failrec)
   return -ENOMEM;
  failrec->start = start;
  failrec->len = end - start + 1;
  failrec->this_mirror = 0;
  failrec->bio_flags = 0;
  failrec->in_validation = 0;

  read_lock(&em_tree->lock);
  em = lookup_extent_mapping(em_tree, start, failrec->len);
  if (!em) {
   read_unlock(&em_tree->lock);
   kfree(failrec);
   return -EIO;
  }

  if (em->start > start || em->start + em->len < start) {
   free_extent_map(em);
   em = ((void*)0);
  }
  read_unlock(&em_tree->lock);

  if (!em || IS_ERR(em)) {
   kfree(failrec);
   return -EIO;
  }
  logical = start - em->start;
  logical = em->block_start + logical;
  if (test_bit(EXTENT_FLAG_COMPRESSED, &em->flags)) {
   logical = em->block_start;
   failrec->bio_flags = EXTENT_BIO_COMPRESSED;
   extent_set_compress_type(&failrec->bio_flags,
       em->compress_type);
  }
  pr_debug("bio_readpage_error: (new) logical=%llu, start=%llu, "
    "len=%llu\n", logical, start, failrec->len);
  failrec->logical = logical;
  free_extent_map(em);


  ret = set_extent_bits(failure_tree, start, end,
     EXTENT_LOCKED | EXTENT_DIRTY, GFP_NOFS);
  if (ret >= 0)
   ret = set_state_private(failure_tree, start,
      (u64)(unsigned long)failrec);

  if (ret >= 0)
   ret = set_extent_bits(tree, start, end, EXTENT_DAMAGED,
      GFP_NOFS);
  if (ret < 0) {
   kfree(failrec);
   return ret;
  }
 } else {
  failrec = (struct io_failure_record *)(unsigned long)private;
  pr_debug("bio_readpage_error: (found) logical=%llu, "
    "start=%llu, len=%llu, validation=%d\n",
    failrec->logical, failrec->start, failrec->len,
    failrec->in_validation);





 }
 num_copies = btrfs_num_copies(
         &BTRFS_I(inode)->root->fs_info->mapping_tree,
         failrec->logical, failrec->len);
 if (num_copies == 1) {





  pr_debug("bio_readpage_error: cannot repair, num_copies == 1. "
    "state=%p, num_copies=%d, next_mirror %d, "
    "failed_mirror %d\n", state, num_copies,
    failrec->this_mirror, failed_mirror);
  free_io_failure(inode, failrec, 0);
  return -EIO;
 }

 if (!state) {
  spin_lock(&tree->lock);
  state = find_first_extent_bit_state(tree, failrec->start,
          EXTENT_LOCKED);
  if (state && state->start != failrec->start)
   state = ((void*)0);
  spin_unlock(&tree->lock);
 }






 if (failed_bio->bi_vcnt > 1) {
  BUG_ON(failrec->in_validation);
  failrec->in_validation = 1;
  failrec->this_mirror = failed_mirror;
  read_mode = READ_SYNC | REQ_FAILFAST_DEV;
 } else {





  if (failrec->in_validation) {
   BUG_ON(failrec->this_mirror != failed_mirror);
   failrec->in_validation = 0;
   failrec->this_mirror = 0;
  }
  failrec->failed_mirror = failed_mirror;
  failrec->this_mirror++;
  if (failrec->this_mirror == failed_mirror)
   failrec->this_mirror++;
  read_mode = READ_SYNC;
 }

 if (!state || failrec->this_mirror > num_copies) {
  pr_debug("bio_readpage_error: (fail) state=%p, num_copies=%d, "
    "next_mirror %d, failed_mirror %d\n", state,
    num_copies, failrec->this_mirror, failed_mirror);
  free_io_failure(inode, failrec, 0);
  return -EIO;
 }

 bio = bio_alloc(GFP_NOFS, 1);
 if (!bio) {
  free_io_failure(inode, failrec, 0);
  return -EIO;
 }
 bio->bi_private = state;
 bio->bi_end_io = failed_bio->bi_end_io;
 bio->bi_sector = failrec->logical >> 9;
 bio->bi_bdev = BTRFS_I(inode)->root->fs_info->fs_devices->latest_bdev;
 bio->bi_size = 0;

 bio_add_page(bio, page, failrec->len, start - page_offset(page));

 pr_debug("bio_readpage_error: submitting new read[%#x] to "
   "this_mirror=%d, num_copies=%d, in_validation=%d\n", read_mode,
   failrec->this_mirror, num_copies, failrec->in_validation);

 ret = tree->ops->submit_bio_hook(inode, read_mode, bio,
      failrec->this_mirror,
      failrec->bio_flags, 0);
 return ret;
}
