
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_device {TYPE_1__* config; } ;
struct TYPE_2__ {unsigned int (* get_status ) (struct virtio_device*) ;int (* set_status ) (struct virtio_device*,unsigned int) ;} ;


 int stub1 (struct virtio_device*,unsigned int) ;
 unsigned int stub2 (struct virtio_device*) ;

__attribute__((used)) static void add_status(struct virtio_device *dev, unsigned status)
{
 dev->config->set_status(dev, dev->config->get_status(dev) | status);
}
