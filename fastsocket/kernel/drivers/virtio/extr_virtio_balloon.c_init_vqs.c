
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vq_callback_t ;
struct virtqueue {int dummy; } ;
struct virtio_balloon {struct virtqueue* stats_vq; int stats; TYPE_2__* vdev; struct virtqueue* deflate_vq; struct virtqueue* inflate_vq; } ;
struct scatterlist {int dummy; } ;
struct TYPE_5__ {TYPE_1__* config; } ;
struct TYPE_4__ {int (* find_vqs ) (TYPE_2__*,int,struct virtqueue**,int **,char const**) ;} ;


 int BUG () ;
 int VIRTIO_BALLOON_F_STATS_VQ ;
 int * balloon_ack ;
 int sg_init_one (struct scatterlist*,int ,int) ;
 int * stats_request ;
 int stub1 (TYPE_2__*,int,struct virtqueue**,int **,char const**) ;
 scalar_t__ virtio_has_feature (TYPE_2__*,int ) ;
 scalar_t__ virtqueue_add_buf (struct virtqueue*,struct scatterlist*,int,int ,struct virtio_balloon*) ;
 int virtqueue_kick (struct virtqueue*) ;

__attribute__((used)) static int init_vqs(struct virtio_balloon *vb)
{
 struct virtqueue *vqs[3];
 vq_callback_t *callbacks[] = { balloon_ack, balloon_ack, stats_request };
 const char *names[] = { "inflate", "deflate", "stats" };
 int err, nvqs;





 nvqs = virtio_has_feature(vb->vdev, VIRTIO_BALLOON_F_STATS_VQ) ? 3 : 2;
 err = vb->vdev->config->find_vqs(vb->vdev, nvqs, vqs, callbacks, names);
 if (err)
  return err;

 vb->inflate_vq = vqs[0];
 vb->deflate_vq = vqs[1];
 if (virtio_has_feature(vb->vdev, VIRTIO_BALLOON_F_STATS_VQ)) {
  struct scatterlist sg;
  vb->stats_vq = vqs[2];





  sg_init_one(&sg, vb->stats, sizeof vb->stats);
  if (virtqueue_add_buf(vb->stats_vq,
        &sg, 1, 0, vb) < 0)
   BUG();
  virtqueue_kick(vb->stats_vq);
 }
 return 0;
}
