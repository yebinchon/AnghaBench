
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;
struct virtio_balloon {int acked; } ;


 int complete (int *) ;
 struct virtio_balloon* virtqueue_get_buf (struct virtqueue*,unsigned int*) ;

__attribute__((used)) static void balloon_ack(struct virtqueue *vq)
{
 struct virtio_balloon *vb;
 unsigned int len;

 vb = virtqueue_get_buf(vq, &len);
 if (vb)
  complete(&vb->acked);
}
