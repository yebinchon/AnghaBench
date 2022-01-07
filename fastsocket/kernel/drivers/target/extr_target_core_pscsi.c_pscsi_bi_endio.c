
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int bio_put (struct bio*) ;

__attribute__((used)) static void pscsi_bi_endio(struct bio *bio, int error)
{
 bio_put(bio);
}
