
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_net {int dummy; } ;


 int VHOST_NET_VQ_RX ;
 int VHOST_NET_VQ_TX ;
 int vhost_net_flush_vq (struct vhost_net*,int ) ;

__attribute__((used)) static void vhost_net_flush(struct vhost_net *n)
{
 vhost_net_flush_vq(n, VHOST_NET_VQ_TX);
 vhost_net_flush_vq(n, VHOST_NET_VQ_RX);
}
