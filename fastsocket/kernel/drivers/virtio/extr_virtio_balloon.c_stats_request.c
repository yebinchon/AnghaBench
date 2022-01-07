
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;
struct virtio_balloon {int need_stats_update; int config_change; } ;


 struct virtio_balloon* virtqueue_get_buf (struct virtqueue*,unsigned int*) ;
 int wake_up (int *) ;

__attribute__((used)) static void stats_request(struct virtqueue *vq)
{
 struct virtio_balloon *vb;
 unsigned int len;

 vb = virtqueue_get_buf(vq, &len);
 if (!vb)
  return;
 vb->need_stats_update = 1;
 wake_up(&vb->config_change);
}
