
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_net {scalar_t__ tx_poll_state; scalar_t__ poll; } ;
struct socket {int file; } ;


 scalar_t__ VHOST_NET_POLL_STARTED ;
 scalar_t__ VHOST_NET_POLL_STOPPED ;
 scalar_t__ VHOST_NET_VQ_TX ;
 scalar_t__ unlikely (int) ;
 int vhost_poll_start (scalar_t__,int ) ;

__attribute__((used)) static void tx_poll_start(struct vhost_net *net, struct socket *sock)
{
 if (unlikely(net->tx_poll_state != VHOST_NET_POLL_STOPPED))
  return;
 vhost_poll_start(net->poll + VHOST_NET_VQ_TX, sock->file);
 net->tx_poll_state = VHOST_NET_POLL_STARTED;
}
