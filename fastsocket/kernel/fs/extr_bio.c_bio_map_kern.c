
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct bio {unsigned int bi_size; } ;
typedef int gfp_t ;


 int EINVAL ;
 struct bio* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct bio*) ;
 struct bio* __bio_map_kern (struct request_queue*,void*,unsigned int,int ) ;
 int bio_put (struct bio*) ;

struct bio *bio_map_kern(struct request_queue *q, void *data, unsigned int len,
    gfp_t gfp_mask)
{
 struct bio *bio;

 bio = __bio_map_kern(q, data, len, gfp_mask);
 if (IS_ERR(bio))
  return bio;

 if (bio->bi_size == len)
  return bio;




 bio_put(bio);
 return ERR_PTR(-EINVAL);
}
