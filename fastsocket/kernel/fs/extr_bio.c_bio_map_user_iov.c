
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_iovec {int dummy; } ;
struct request_queue {int dummy; } ;
struct block_device {int dummy; } ;
struct bio {int dummy; } ;
typedef int gfp_t ;


 scalar_t__ IS_ERR (struct bio*) ;
 struct bio* __bio_map_user_iov (struct request_queue*,struct block_device*,struct sg_iovec*,int,int,int ) ;
 int bio_get (struct bio*) ;

struct bio *bio_map_user_iov(struct request_queue *q, struct block_device *bdev,
        struct sg_iovec *iov, int iov_count,
        int write_to_vm, gfp_t gfp_mask)
{
 struct bio *bio;

 bio = __bio_map_user_iov(q, bdev, iov, iov_count, write_to_vm,
     gfp_mask);
 if (IS_ERR(bio))
  return bio;







 bio_get(bio);

 return bio;
}
