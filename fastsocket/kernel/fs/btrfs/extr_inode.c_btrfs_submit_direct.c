
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct inode {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_ordered_extent {int disk_len; int start; int flags; } ;
struct btrfs_dio_private {int disk_bytenr; int pending_bios; struct bio* orig_bio; scalar_t__ errors; scalar_t__ bytes; int logical_offset; struct inode* inode; struct btrfs_dio_private* private; int * csums; } ;
struct bio_vec {scalar_t__ bv_len; } ;
struct bio {int bi_vcnt; int bi_end_io; struct btrfs_dio_private* bi_private; scalar_t__ bi_sector; struct bio_vec* bi_io_vec; } ;
typedef int loff_t ;
struct TYPE_2__ {int flags; struct btrfs_root* root; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_NODATASUM ;
 int BTRFS_ORDERED_NOCOW ;
 int BTRFS_ORDERED_PREALLOC ;
 int ENOMEM ;
 int GFP_NOFS ;
 int REQ_WRITE ;
 int atomic_set (int *,int ) ;
 int bio_endio (struct bio*,int) ;
 int btrfs_endio_direct_read ;
 int btrfs_endio_direct_write ;
 int btrfs_free_reserved_extent (struct btrfs_root*,int ,int ) ;
 struct btrfs_ordered_extent* btrfs_lookup_ordered_extent (struct inode*,int ) ;
 int btrfs_put_ordered_extent (struct btrfs_ordered_extent*) ;
 int btrfs_submit_direct_hook (int,struct btrfs_dio_private*,int) ;
 int kfree (struct btrfs_dio_private*) ;
 void* kmalloc (int,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void btrfs_submit_direct(int rw, struct bio *bio, struct inode *inode,
    loff_t file_offset)
{
 struct btrfs_root *root = BTRFS_I(inode)->root;
 struct btrfs_dio_private *dip;
 struct bio_vec *bvec = bio->bi_io_vec;
 int skip_sum;
 int write = rw & REQ_WRITE;
 int ret = 0;

 skip_sum = BTRFS_I(inode)->flags & BTRFS_INODE_NODATASUM;

 dip = kmalloc(sizeof(*dip), GFP_NOFS);
 if (!dip) {
  ret = -ENOMEM;
  goto free_ordered;
 }
 dip->csums = ((void*)0);


 if (!write && !skip_sum) {
  dip->csums = kmalloc(sizeof(u32) * bio->bi_vcnt, GFP_NOFS);
  if (!dip->csums) {
   kfree(dip);
   ret = -ENOMEM;
   goto free_ordered;
  }
 }

 dip->private = bio->bi_private;
 dip->inode = inode;
 dip->logical_offset = file_offset;

 dip->bytes = 0;
 do {
  dip->bytes += bvec->bv_len;
  bvec++;
 } while (bvec <= (bio->bi_io_vec + bio->bi_vcnt - 1));

 dip->disk_bytenr = (u64)bio->bi_sector << 9;
 bio->bi_private = dip;
 dip->errors = 0;
 dip->orig_bio = bio;
 atomic_set(&dip->pending_bios, 0);

 if (write)
  bio->bi_end_io = btrfs_endio_direct_write;
 else
  bio->bi_end_io = btrfs_endio_direct_read;

 ret = btrfs_submit_direct_hook(rw, dip, skip_sum);
 if (!ret)
  return;
free_ordered:




 if (write) {
  struct btrfs_ordered_extent *ordered;
  ordered = btrfs_lookup_ordered_extent(inode, file_offset);
  if (!test_bit(BTRFS_ORDERED_PREALLOC, &ordered->flags) &&
      !test_bit(BTRFS_ORDERED_NOCOW, &ordered->flags))
   btrfs_free_reserved_extent(root, ordered->start,
         ordered->disk_len);
  btrfs_put_ordered_extent(ordered);
  btrfs_put_ordered_extent(ordered);
 }
 bio_endio(bio, ret);
}
