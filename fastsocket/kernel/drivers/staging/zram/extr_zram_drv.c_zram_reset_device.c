
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zram {int init_lock; } ;


 int __zram_reset_device (struct zram*) ;
 int down_write (int *) ;
 int up_write (int *) ;

void zram_reset_device(struct zram *zram)
{
 down_write(&zram->init_lock);
 __zram_reset_device(zram);
 up_write(&zram->init_lock);
}
