
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int __bio_unmap_user (struct bio*) ;
 int bio_put (struct bio*) ;

void bio_unmap_user(struct bio *bio)
{
 __bio_unmap_user(bio);
 bio_put(bio);
}
