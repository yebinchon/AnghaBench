
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* vqs; } ;
struct vhost_net {TYPE_2__ dev; int * poll; } ;
struct TYPE_3__ {int poll; } ;


 int vhost_poll_flush (int *) ;

__attribute__((used)) static void vhost_net_flush_vq(struct vhost_net *n, int index)
{
 vhost_poll_flush(n->poll + index);
 vhost_poll_flush(&n->dev.vqs[index].poll);
}
