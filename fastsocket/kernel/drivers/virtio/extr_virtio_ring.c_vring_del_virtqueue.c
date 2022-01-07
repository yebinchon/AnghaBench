
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int list; } ;


 int kfree (int ) ;
 int list_del (int *) ;
 int to_vvq (struct virtqueue*) ;

void vring_del_virtqueue(struct virtqueue *vq)
{
 list_del(&vq->list);
 kfree(to_vvq(vq));
}
