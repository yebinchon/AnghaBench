
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {TYPE_1__* s_bdev; int s_dev; } ;
struct nilfs_super_data {TYPE_1__* bdev; } ;
struct TYPE_2__ {int bd_dev; } ;



__attribute__((used)) static int nilfs_set_bdev_super(struct super_block *s, void *data)
{
 struct nilfs_super_data *sd = data;

 s->s_bdev = sd->bdev;
 s->s_dev = s->s_bdev->bd_dev;
 return 0;
}
