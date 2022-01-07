
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_device {TYPE_1__* config; struct virtio_chan* priv; } ;
struct virtio_chan {int initialized; int inuse; } ;
struct TYPE_2__ {int (* del_vqs ) (struct virtio_device*) ;} ;


 int BUG_ON (int ) ;
 int stub1 (struct virtio_device*) ;

__attribute__((used)) static void p9_virtio_remove(struct virtio_device *vdev)
{
 struct virtio_chan *chan = vdev->priv;

 BUG_ON(chan->inuse);

 if (chan->initialized) {
  vdev->config->del_vqs(vdev);
  chan->initialized = 0;
 }
}
