
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_device {TYPE_1__* config; struct virtio_balloon* priv; } ;
struct virtio_balloon {int tell_host_first; int thread; scalar_t__ need_stats_update; struct virtio_device* vdev; int config_change; scalar_t__ num_pages; int pages; } ;
struct TYPE_2__ {int (* del_vqs ) (struct virtio_device*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int VIRTIO_BALLOON_F_MUST_TELL_HOST ;
 int balloon ;
 int init_vqs (struct virtio_balloon*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct virtio_balloon*) ;
 struct virtio_balloon* kmalloc (int,int ) ;
 int kthread_run (int ,struct virtio_balloon*,char*) ;
 int stub1 (struct virtio_device*) ;
 int virtio_has_feature (struct virtio_device*,int ) ;

__attribute__((used)) static int virtballoon_probe(struct virtio_device *vdev)
{
 struct virtio_balloon *vb;
 int err;

 vdev->priv = vb = kmalloc(sizeof(*vb), GFP_KERNEL);
 if (!vb) {
  err = -ENOMEM;
  goto out;
 }

 INIT_LIST_HEAD(&vb->pages);
 vb->num_pages = 0;
 init_waitqueue_head(&vb->config_change);
 vb->vdev = vdev;
 vb->need_stats_update = 0;

 err = init_vqs(vb);
 if (err)
  goto out_free_vb;

 vb->thread = kthread_run(balloon, vb, "vballoon");
 if (IS_ERR(vb->thread)) {
  err = PTR_ERR(vb->thread);
  goto out_del_vqs;
 }

 vb->tell_host_first
  = virtio_has_feature(vdev, VIRTIO_BALLOON_F_MUST_TELL_HOST);

 return 0;

out_del_vqs:
 vdev->config->del_vqs(vdev);
out_free_vb:
 kfree(vb);
out:
 return err;
}
