
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dst_node {scalar_t__ size; TYPE_3__* bdev; TYPE_2__* info; } ;
struct dst_export_ctl {char* device; } ;
struct dst_ctl {int dummy; } ;
typedef int dev_t ;
struct TYPE_7__ {TYPE_1__* bd_inode; } ;
struct TYPE_6__ {scalar_t__ size; int local; } ;
struct TYPE_5__ {scalar_t__ i_size; } ;


 int ENODEV ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int blkdev_put (TYPE_3__*,int) ;
 int dst_lookup_device (char*,int *) ;
 int dst_node_init_listened (struct dst_node*,struct dst_export_ctl*) ;
 int loff_t ;
 scalar_t__ min_t (int ,scalar_t__,scalar_t__) ;
 TYPE_3__* open_by_devnum (int ,int) ;
 int snprintf (int ,int,char*,char*) ;

__attribute__((used)) static int dst_setup_export(struct dst_node *n, struct dst_ctl *ctl,
  struct dst_export_ctl *le)
{
 int err;
 dev_t dev = 0;

 snprintf(n->info->local, sizeof(n->info->local), "%s", le->device);

 err = dst_lookup_device(le->device, &dev);
 if (err)
  return err;

 n->bdev = open_by_devnum(dev, FMODE_READ|FMODE_WRITE);
 if (!n->bdev)
  return -ENODEV;

 if (n->size != 0)
  n->size = min_t(loff_t, n->bdev->bd_inode->i_size, n->size);
 else
  n->size = n->bdev->bd_inode->i_size;

 n->info->size = n->size;
 err = dst_node_init_listened(n, le);
 if (err)
  goto err_out_cleanup;

 return 0;

err_out_cleanup:
 blkdev_put(n->bdev, FMODE_READ|FMODE_WRITE);
 n->bdev = ((void*)0);

 return err;
}
