
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct btrfs_root {int dummy; } ;
struct bio_vec {TYPE_2__* bv_page; } ;
struct bio {int bi_vcnt; struct bio_vec* bi_io_vec; } ;
struct TYPE_6__ {struct btrfs_root* root; } ;
struct TYPE_5__ {TYPE_1__* mapping; } ;
struct TYPE_4__ {int host; } ;


 TYPE_3__* BTRFS_I (int ) ;
 int WARN_ON (int) ;
 int csum_dirty_buffer (struct btrfs_root*,TYPE_2__*) ;

__attribute__((used)) static int btree_csum_one_bio(struct bio *bio)
{
 struct bio_vec *bvec = bio->bi_io_vec;
 int bio_index = 0;
 struct btrfs_root *root;
 int ret = 0;

 WARN_ON(bio->bi_vcnt <= 0);
 while (bio_index < bio->bi_vcnt) {
  root = BTRFS_I(bvec->bv_page->mapping->host)->root;
  ret = csum_dirty_buffer(root, bvec->bv_page);
  if (ret)
   break;
  bio_index++;
  bvec++;
 }
 return ret;
}
