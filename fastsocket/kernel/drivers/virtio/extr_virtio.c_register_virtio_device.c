
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * bus; } ;
struct virtio_device {int index; TYPE_2__ dev; int vqs; TYPE_1__* config; } ;
struct TYPE_4__ {int (* reset ) (struct virtio_device*) ;} ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int VIRTIO_CONFIG_S_ACKNOWLEDGE ;
 int VIRTIO_CONFIG_S_FAILED ;
 int add_status (struct virtio_device*,int ) ;
 int dev_set_name (TYPE_2__*,char*,int) ;
 int device_register (TYPE_2__*) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int stub1 (struct virtio_device*) ;
 int virtio_bus ;
 int virtio_index_ida ;

int register_virtio_device(struct virtio_device *dev)
{
 int err;

 dev->dev.bus = &virtio_bus;


 err = ida_simple_get(&virtio_index_ida, 0, 0, GFP_KERNEL);
 if (err < 0)
  goto out;

 dev->index = err;
 dev_set_name(&dev->dev, "virtio%u", dev->index);



 dev->config->reset(dev);


 add_status(dev, VIRTIO_CONFIG_S_ACKNOWLEDGE);

 INIT_LIST_HEAD(&dev->vqs);



 err = device_register(&dev->dev);
out:
 if (err)
  add_status(dev, VIRTIO_CONFIG_S_FAILED);
 return err;
}
