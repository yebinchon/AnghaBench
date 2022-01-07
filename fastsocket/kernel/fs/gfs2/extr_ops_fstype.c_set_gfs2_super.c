
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {TYPE_2__* s_bdev; int * s_bdi; int s_dev; } ;
struct TYPE_4__ {int bd_dev; } ;
struct TYPE_3__ {int backing_dev_info; } ;


 TYPE_1__* bdev_get_queue (TYPE_2__*) ;

__attribute__((used)) static int set_gfs2_super(struct super_block *s, void *data)
{
 s->s_bdev = data;
 s->s_dev = s->s_bdev->bd_dev;





 s->s_bdi = &bdev_get_queue(s->s_bdev)->backing_dev_info;
 return 0;
}
