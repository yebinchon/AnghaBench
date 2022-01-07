
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_11__ {int bus; } ;
struct TYPE_10__ {void (* release ) (struct device*) ;TYPE_3__* driver; int parent; int bus; } ;
struct TYPE_9__ {int (* iucv_register ) (int *,int ) ;int (* iucv_unregister ) (int *,int ) ;int root; int bus; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_2__* af_iucv_dev ;
 TYPE_3__ af_iucv_driver ;
 int af_iucv_handler ;
 int dev_set_name (TYPE_2__*,char*) ;
 int device_register (TYPE_2__*) ;
 int driver_register (TYPE_3__*) ;
 int driver_unregister (TYPE_3__*) ;
 scalar_t__ kfree ;
 TYPE_2__* kzalloc (int,int ) ;
 TYPE_1__* pr_iucv ;
 int stub1 (int *,int ) ;
 int stub2 (int *,int ) ;

__attribute__((used)) static int afiucv_iucv_init(void)
{
 int err;

 err = pr_iucv->iucv_register(&af_iucv_handler, 0);
 if (err)
  goto out;

 af_iucv_driver.bus = pr_iucv->bus;
 err = driver_register(&af_iucv_driver);
 if (err)
  goto out_iucv;
 af_iucv_dev = kzalloc(sizeof(struct device), GFP_KERNEL);
 if (!af_iucv_dev) {
  err = -ENOMEM;
  goto out_driver;
 }
 dev_set_name(af_iucv_dev, "af_iucv");
 af_iucv_dev->bus = pr_iucv->bus;
 af_iucv_dev->parent = pr_iucv->root;
 af_iucv_dev->release = (void (*)(struct device *))kfree;
 af_iucv_dev->driver = &af_iucv_driver;
 err = device_register(af_iucv_dev);
 if (err)
  goto out_driver;
 return 0;

out_driver:
 driver_unregister(&af_iucv_driver);
out_iucv:
 pr_iucv->iucv_unregister(&af_iucv_handler, 0);
out:
 return err;
}
