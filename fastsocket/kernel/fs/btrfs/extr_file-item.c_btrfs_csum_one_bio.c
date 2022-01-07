
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct inode {int dummy; } ;
struct btrfs_sector_sum {int bytenr; int sum; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_ordered_sum {unsigned long len; int bytenr; struct btrfs_sector_sum* sums; int list; } ;
struct btrfs_ordered_extent {int file_offset; int len; int start; } ;
struct bio_vec {int bv_offset; int bv_len; int bv_page; } ;
struct bio {int bi_vcnt; unsigned long bi_size; scalar_t__ bi_sector; struct bio_vec* bi_io_vec; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int KM_USER0 ;
 int WARN_ON (int) ;
 int btrfs_add_ordered_sum (struct inode*,struct btrfs_ordered_extent*,struct btrfs_ordered_sum*) ;
 int btrfs_csum_data (struct btrfs_root*,char*,int ,int) ;
 int btrfs_csum_final (int ,char*) ;
 struct btrfs_ordered_extent* btrfs_lookup_ordered_extent (struct inode*,int) ;
 int btrfs_ordered_sum_size (struct btrfs_root*,unsigned long) ;
 int btrfs_put_ordered_extent (struct btrfs_ordered_extent*) ;
 char* kmap_atomic (int ,int ) ;
 int kunmap_atomic (char*,int ) ;
 struct btrfs_ordered_sum* kzalloc (int ,int ) ;
 int page_offset (int ) ;

int btrfs_csum_one_bio(struct btrfs_root *root, struct inode *inode,
         struct bio *bio, u64 file_start, int contig)
{
 struct btrfs_ordered_sum *sums;
 struct btrfs_sector_sum *sector_sum;
 struct btrfs_ordered_extent *ordered;
 char *data;
 struct bio_vec *bvec = bio->bi_io_vec;
 int bio_index = 0;
 unsigned long total_bytes = 0;
 unsigned long this_sum_bytes = 0;
 u64 offset;
 u64 disk_bytenr;

 WARN_ON(bio->bi_vcnt <= 0);
 sums = kzalloc(btrfs_ordered_sum_size(root, bio->bi_size), GFP_NOFS);
 if (!sums)
  return -ENOMEM;

 sector_sum = sums->sums;
 disk_bytenr = (u64)bio->bi_sector << 9;
 sums->len = bio->bi_size;
 INIT_LIST_HEAD(&sums->list);

 if (contig)
  offset = file_start;
 else
  offset = page_offset(bvec->bv_page) + bvec->bv_offset;

 ordered = btrfs_lookup_ordered_extent(inode, offset);
 BUG_ON(!ordered);
 sums->bytenr = ordered->start;

 while (bio_index < bio->bi_vcnt) {
  if (!contig)
   offset = page_offset(bvec->bv_page) + bvec->bv_offset;

  if (!contig && (offset >= ordered->file_offset + ordered->len ||
      offset < ordered->file_offset)) {
   unsigned long bytes_left;
   sums->len = this_sum_bytes;
   this_sum_bytes = 0;
   btrfs_add_ordered_sum(inode, ordered, sums);
   btrfs_put_ordered_extent(ordered);

   bytes_left = bio->bi_size - total_bytes;

   sums = kzalloc(btrfs_ordered_sum_size(root, bytes_left),
           GFP_NOFS);
   BUG_ON(!sums);
   sector_sum = sums->sums;
   sums->len = bytes_left;
   ordered = btrfs_lookup_ordered_extent(inode, offset);
   BUG_ON(!ordered);
   sums->bytenr = ordered->start;
  }

  data = kmap_atomic(bvec->bv_page, KM_USER0);
  sector_sum->sum = ~(u32)0;
  sector_sum->sum = btrfs_csum_data(root,
        data + bvec->bv_offset,
        sector_sum->sum,
        bvec->bv_len);
  kunmap_atomic(data, KM_USER0);
  btrfs_csum_final(sector_sum->sum,
     (char *)&sector_sum->sum);
  sector_sum->bytenr = disk_bytenr;

  sector_sum++;
  bio_index++;
  total_bytes += bvec->bv_len;
  this_sum_bytes += bvec->bv_len;
  disk_bytenr += bvec->bv_len;
  offset += bvec->bv_len;
  bvec++;
 }
 this_sum_bytes = 0;
 btrfs_add_ordered_sum(inode, ordered, sums);
 btrfs_put_ordered_extent(ordered);
 return 0;
}
