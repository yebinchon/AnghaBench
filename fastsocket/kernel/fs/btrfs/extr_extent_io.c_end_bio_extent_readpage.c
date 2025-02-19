
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct page {TYPE_1__* mapping; int flags; scalar_t__ index; } ;
struct extent_state {scalar_t__ start; } ;
struct extent_io_tree {scalar_t__ track_uptodate; TYPE_2__* ops; int lock; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_device {int dummy; } ;
struct bio_vec {scalar_t__ bv_offset; scalar_t__ bv_len; struct page* bv_page; } ;
struct bio {int bi_vcnt; int bi_flags; scalar_t__ bi_bdev; int bi_idx; struct bio_vec* bi_io_vec; } ;
struct TYPE_6__ {struct btrfs_root* root; struct extent_io_tree io_tree; } ;
struct TYPE_5__ {int (* readpage_end_io_hook ) (struct page*,scalar_t__,scalar_t__,struct extent_state*,int) ;int (* readpage_io_failed_hook ) (struct page*,int) ;} ;
struct TYPE_4__ {int host; } ;


 int BIO_UPTODATE ;
 int BTRFS_DEV_STAT_CORRUPTION_ERRS ;
 TYPE_3__* BTRFS_I (int ) ;
 int ClearPageUptodate (struct page*) ;
 int EXTENT_LOCKED ;
 int GFP_ATOMIC ;
 scalar_t__ PAGE_CACHE_SHIFT ;
 scalar_t__ PAGE_CACHE_SIZE ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int bio_put (struct bio*) ;
 int bio_readpage_error (struct bio*,struct page*,scalar_t__,scalar_t__,int,int *) ;
 int btrfs_dev_stat_inc_and_print (struct btrfs_device*,int ) ;
 struct btrfs_device* btrfs_find_device_for_logical (struct btrfs_root*,scalar_t__,int) ;
 int cache_state (struct extent_state*,struct extent_state**) ;
 int check_page_locked (struct extent_io_tree*,struct page*) ;
 int check_page_uptodate (struct extent_io_tree*,struct page*) ;
 int clean_io_failure (scalar_t__,struct page*) ;
 struct extent_state* find_first_extent_bit_state (struct extent_io_tree*,scalar_t__,int ) ;
 int pr_debug (char*,int,int ,int,long) ;
 int prefetchw (int *) ;
 int set_extent_uptodate (struct extent_io_tree*,scalar_t__,scalar_t__,struct extent_state**,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct page*,scalar_t__,scalar_t__,struct extent_state*,int) ;
 int stub2 (struct page*,int) ;
 int test_bit (int ,int *) ;
 int uncache_state (struct extent_state**) ;
 int unlock_extent_cached (struct extent_io_tree*,scalar_t__,scalar_t__,struct extent_state**,int ) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void end_bio_extent_readpage(struct bio *bio, int err)
{
 int uptodate = test_bit(BIO_UPTODATE, &bio->bi_flags);
 struct bio_vec *bvec_end = bio->bi_io_vec + bio->bi_vcnt - 1;
 struct bio_vec *bvec = bio->bi_io_vec;
 struct extent_io_tree *tree;
 u64 start;
 u64 end;
 int whole_page;
 int mirror;
 int ret;

 if (err)
  uptodate = 0;

 do {
  struct page *page = bvec->bv_page;
  struct extent_state *cached = ((void*)0);
  struct extent_state *state;

  pr_debug("end_bio_extent_readpage: bi_vcnt=%d, idx=%d, err=%d, "
    "mirror=%ld\n", bio->bi_vcnt, bio->bi_idx, err,
    (long int)bio->bi_bdev);
  tree = &BTRFS_I(page->mapping->host)->io_tree;

  start = ((u64)page->index << PAGE_CACHE_SHIFT) +
   bvec->bv_offset;
  end = start + bvec->bv_len - 1;

  if (bvec->bv_offset == 0 && bvec->bv_len == PAGE_CACHE_SIZE)
   whole_page = 1;
  else
   whole_page = 0;

  if (++bvec <= bvec_end)
   prefetchw(&bvec->bv_page->flags);

  spin_lock(&tree->lock);
  state = find_first_extent_bit_state(tree, start, EXTENT_LOCKED);
  if (state && state->start == start) {




   cache_state(state, &cached);
  }
  spin_unlock(&tree->lock);

  mirror = (int)(unsigned long)bio->bi_bdev;
  if (uptodate && tree->ops && tree->ops->readpage_end_io_hook) {
   ret = tree->ops->readpage_end_io_hook(page, start, end,
             state, mirror);
   if (ret) {



    struct btrfs_root *root =
     BTRFS_I(page->mapping->host)->root;
    struct btrfs_device *device;

    uptodate = 0;
    device = btrfs_find_device_for_logical(
      root, start, mirror);
    if (device)
     btrfs_dev_stat_inc_and_print(device,
      BTRFS_DEV_STAT_CORRUPTION_ERRS);
   } else {
    clean_io_failure(start, page);
   }
  }

  if (!uptodate && tree->ops && tree->ops->readpage_io_failed_hook) {
   ret = tree->ops->readpage_io_failed_hook(page, mirror);
   if (!ret && !err &&
       test_bit(BIO_UPTODATE, &bio->bi_flags))
    uptodate = 1;
  } else if (!uptodate) {
   ret = bio_readpage_error(bio, page, start, end, mirror, ((void*)0));
   if (ret == 0) {
    uptodate =
     test_bit(BIO_UPTODATE, &bio->bi_flags);
    if (err)
     uptodate = 0;
    uncache_state(&cached);
    continue;
   }
  }

  if (uptodate && tree->track_uptodate) {
   set_extent_uptodate(tree, start, end, &cached,
         GFP_ATOMIC);
  }
  unlock_extent_cached(tree, start, end, &cached, GFP_ATOMIC);

  if (whole_page) {
   if (uptodate) {
    SetPageUptodate(page);
   } else {
    ClearPageUptodate(page);
    SetPageError(page);
   }
   unlock_page(page);
  } else {
   if (uptodate) {
    check_page_uptodate(tree, page);
   } else {
    ClearPageUptodate(page);
    SetPageError(page);
   }
   check_page_locked(tree, page);
  }
 } while (bvec <= bvec_end);

 bio_put(bio);
}
