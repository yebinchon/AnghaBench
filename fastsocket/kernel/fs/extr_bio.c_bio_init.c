
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_flags; int bi_comp_cpu; int bi_cnt; } ;


 int BIO_UPTODATE ;
 int atomic_set (int *,int) ;
 int memset (struct bio*,int ,int) ;

void bio_init(struct bio *bio)
{
 memset(bio, 0, sizeof(*bio));
 bio->bi_flags = 1 << BIO_UPTODATE;
 bio->bi_comp_cpu = -1;
 atomic_set(&bio->bi_cnt, 1);
}
