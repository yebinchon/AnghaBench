
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int notify_free; } ;
struct zram {TYPE_2__ stats; } ;
struct block_device {TYPE_1__* bd_disk; } ;
struct TYPE_3__ {struct zram* private_data; } ;


 int zram_free_page (struct zram*,unsigned long) ;
 int zram_stat64_inc (struct zram*,int *) ;

void zram_slot_free_notify(struct block_device *bdev, unsigned long index)
{
 struct zram *zram;

 zram = bdev->bd_disk->private_data;
 zram_free_page(zram, index);
 zram_stat64_inc(zram, &zram->stats.notify_free);
}
