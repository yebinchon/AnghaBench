
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int invalid_io; } ;
struct zram {int init_lock; TYPE_1__ stats; int init_done; } ;
struct request_queue {struct zram* queuedata; } ;
struct bio {int dummy; } ;


 int __zram_make_request (struct zram*,struct bio*,int ) ;
 int bio_data_dir (struct bio*) ;
 int bio_io_error (struct bio*) ;
 int down_read (int *) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;
 int valid_io_request (struct zram*,struct bio*) ;
 scalar_t__ zram_init_device (struct zram*) ;
 int zram_stat64_inc (struct zram*,int *) ;

__attribute__((used)) static int zram_make_request(struct request_queue *queue, struct bio *bio)
{
 struct zram *zram = queue->queuedata;

 if (unlikely(!zram->init_done) && zram_init_device(zram))
  goto error;

 down_read(&zram->init_lock);
 if (unlikely(!zram->init_done))
  goto error_unlock;

 if (!valid_io_request(zram, bio)) {
  zram_stat64_inc(zram, &zram->stats.invalid_io);
  goto error_unlock;
 }

 __zram_make_request(zram, bio, bio_data_dir(bio));
 up_read(&zram->init_lock);

 return 0;

error_unlock:
 up_read(&zram->init_lock);
error:
 bio_io_error(bio);
 return 0;
}
