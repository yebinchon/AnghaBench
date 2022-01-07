
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct block_device {int dummy; } ;
struct bio {int dummy; } ;
typedef int gfp_t ;


 int bio_get_nr_vecs (struct block_device*) ;
 struct bio* btrfs_bio_alloc (struct block_device*,int ,int,int ) ;

__attribute__((used)) static struct bio *btrfs_dio_bio_alloc(struct block_device *bdev,
           u64 first_sector, gfp_t gfp_flags)
{
 int nr_vecs = bio_get_nr_vecs(bdev);
 return btrfs_bio_alloc(bdev, first_sector, nr_vecs, gfp_flags);
}
