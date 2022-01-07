
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;
struct virtio_balloon {int stats; struct virtqueue* stats_vq; scalar_t__ need_stats_update; } ;
struct scatterlist {int dummy; } ;


 int BUG () ;
 int sg_init_one (struct scatterlist*,int ,int) ;
 int update_balloon_stats (struct virtio_balloon*) ;
 scalar_t__ virtqueue_add_buf (struct virtqueue*,struct scatterlist*,int,int ,struct virtio_balloon*) ;
 int virtqueue_kick (struct virtqueue*) ;

__attribute__((used)) static void stats_handle_request(struct virtio_balloon *vb)
{
 struct virtqueue *vq;
 struct scatterlist sg;

 vb->need_stats_update = 0;
 update_balloon_stats(vb);

 vq = vb->stats_vq;
 sg_init_one(&sg, vb->stats, sizeof(vb->stats));
 if (virtqueue_add_buf(vq, &sg, 1, 0, vb) < 0)
  BUG();
 virtqueue_kick(vq);
}
