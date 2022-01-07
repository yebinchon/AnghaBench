
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* desc; } ;
struct vring_virtqueue {unsigned int free_head; int num_free; TYPE_2__ vring; int ** data; } ;
struct TYPE_3__ {int flags; unsigned int next; int addr; } ;


 int VRING_DESC_F_INDIRECT ;
 int VRING_DESC_F_NEXT ;
 int kfree (int ) ;
 int phys_to_virt (int ) ;

__attribute__((used)) static void detach_buf(struct vring_virtqueue *vq, unsigned int head)
{
 unsigned int i;


 vq->data[head] = ((void*)0);


 i = head;


 if (vq->vring.desc[i].flags & VRING_DESC_F_INDIRECT)
  kfree(phys_to_virt(vq->vring.desc[i].addr));

 while (vq->vring.desc[i].flags & VRING_DESC_F_NEXT) {
  i = vq->vring.desc[i].next;
  vq->num_free++;
 }

 vq->vring.desc[i].next = vq->free_head;
 vq->free_head = head;

 vq->num_free++;
}
