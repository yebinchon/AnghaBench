
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct inode {int dummy; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_mapping_tree {int dummy; } ;
struct btrfs_dio_private {int logical_offset; int errors; struct bio* orig_bio; int pending_bios; int * csums; struct inode* inode; } ;
struct bio_vec {int bv_len; int bv_offset; int bv_page; } ;
struct bio {int bi_sector; int bi_size; int bi_vcnt; void* bi_end_io; struct btrfs_dio_private* bi_private; int bi_bdev; struct bio_vec* bi_io_vec; } ;
struct TYPE_4__ {struct btrfs_root* root; } ;
struct TYPE_3__ {struct btrfs_mapping_tree mapping_tree; } ;


 TYPE_2__* BTRFS_I (struct inode*) ;
 int EIO ;
 int ENOMEM ;
 int GFP_NOFS ;
 int READ ;
 int REQ_WRITE ;
 int __btrfs_submit_dio_bio (struct bio*,struct inode*,int,int,int,int *,int) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ bio_add_page (struct bio*,int ,int,int ) ;
 int bio_io_error (struct bio*) ;
 int bio_put (struct bio*) ;
 struct bio* btrfs_dio_bio_alloc (int ,int,int ) ;
 void* btrfs_end_dio_bio ;
 int btrfs_map_block (struct btrfs_mapping_tree*,int ,int,int*,int *,int ) ;
 int smp_mb__before_atomic_dec () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int btrfs_submit_direct_hook(int rw, struct btrfs_dio_private *dip,
        int skip_sum)
{
 struct inode *inode = dip->inode;
 struct btrfs_root *root = BTRFS_I(inode)->root;
 struct btrfs_mapping_tree *map_tree = &root->fs_info->mapping_tree;
 struct bio *bio;
 struct bio *orig_bio = dip->orig_bio;
 struct bio_vec *bvec = orig_bio->bi_io_vec;
 u64 start_sector = orig_bio->bi_sector;
 u64 file_offset = dip->logical_offset;
 u64 submit_len = 0;
 u64 map_length;
 int nr_pages = 0;
 u32 *csums = dip->csums;
 int ret = 0;
 int async_submit = 0;
 int write = rw & REQ_WRITE;

 map_length = orig_bio->bi_size;
 ret = btrfs_map_block(map_tree, READ, start_sector << 9,
         &map_length, ((void*)0), 0);
 if (ret) {
  bio_put(orig_bio);
  return -EIO;
 }

 if (map_length >= orig_bio->bi_size) {
  bio = orig_bio;
  goto submit;
 }

 async_submit = 1;
 bio = btrfs_dio_bio_alloc(orig_bio->bi_bdev, start_sector, GFP_NOFS);
 if (!bio)
  return -ENOMEM;
 bio->bi_private = dip;
 bio->bi_end_io = btrfs_end_dio_bio;
 atomic_inc(&dip->pending_bios);

 while (bvec <= (orig_bio->bi_io_vec + orig_bio->bi_vcnt - 1)) {
  if (unlikely(map_length < submit_len + bvec->bv_len ||
      bio_add_page(bio, bvec->bv_page, bvec->bv_len,
     bvec->bv_offset) < bvec->bv_len)) {






   atomic_inc(&dip->pending_bios);
   ret = __btrfs_submit_dio_bio(bio, inode, rw,
           file_offset, skip_sum,
           csums, async_submit);
   if (ret) {
    bio_put(bio);
    atomic_dec(&dip->pending_bios);
    goto out_err;
   }


   if (!write && !skip_sum)
    csums = csums + nr_pages;
   start_sector += submit_len >> 9;
   file_offset += submit_len;

   submit_len = 0;
   nr_pages = 0;

   bio = btrfs_dio_bio_alloc(orig_bio->bi_bdev,
        start_sector, GFP_NOFS);
   if (!bio)
    goto out_err;
   bio->bi_private = dip;
   bio->bi_end_io = btrfs_end_dio_bio;

   map_length = orig_bio->bi_size;
   ret = btrfs_map_block(map_tree, READ, start_sector << 9,
           &map_length, ((void*)0), 0);
   if (ret) {
    bio_put(bio);
    goto out_err;
   }
  } else {
   submit_len += bvec->bv_len;
   nr_pages ++;
   bvec++;
  }
 }

submit:
 ret = __btrfs_submit_dio_bio(bio, inode, rw, file_offset, skip_sum,
         csums, async_submit);
 if (!ret)
  return 0;

 bio_put(bio);
out_err:
 dip->errors = 1;




 smp_mb__before_atomic_dec();
 if (atomic_dec_and_test(&dip->pending_bios))
  bio_io_error(dip->orig_bio);


 return 0;
}
