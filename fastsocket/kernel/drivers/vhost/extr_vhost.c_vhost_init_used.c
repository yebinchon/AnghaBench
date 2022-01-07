
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhost_virtqueue {int signalled_used_valid; TYPE_1__* used; int last_used_idx; int private_data; } ;
struct TYPE_2__ {int idx; } ;


 int get_user (int ,int *) ;
 int vhost_update_used_flags (struct vhost_virtqueue*) ;

int vhost_init_used(struct vhost_virtqueue *vq)
{
 int r;
 if (!vq->private_data)
  return 0;

 r = vhost_update_used_flags(vq);
 if (r)
  return r;
 vq->signalled_used_valid = 0;
 return get_user(vq->last_used_idx, &vq->used->idx);
}
