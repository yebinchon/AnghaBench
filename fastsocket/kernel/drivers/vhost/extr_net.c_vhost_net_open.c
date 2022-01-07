
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhost_dev {int dummy; } ;
struct vhost_net {int tx_poll_state; scalar_t__ poll; TYPE_1__* vqs; struct vhost_dev dev; } ;
struct inode {int dummy; } ;
struct file {struct vhost_net* private_data; } ;
struct TYPE_2__ {int handle_kick; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int POLLIN ;
 int POLLOUT ;
 int VHOST_NET_POLL_DISABLED ;
 int VHOST_NET_VQ_MAX ;
 size_t VHOST_NET_VQ_RX ;
 size_t VHOST_NET_VQ_TX ;
 int handle_rx_kick ;
 int handle_rx_net ;
 int handle_tx_kick ;
 int handle_tx_net ;
 int kfree (struct vhost_net*) ;
 struct vhost_net* kmalloc (int,int ) ;
 int vhost_dev_init (struct vhost_dev*,TYPE_1__*,int ) ;
 int vhost_poll_init (scalar_t__,int ,int ,struct vhost_dev*) ;

__attribute__((used)) static int vhost_net_open(struct inode *inode, struct file *f)
{
 struct vhost_net *n = kmalloc(sizeof *n, GFP_KERNEL);
 struct vhost_dev *dev;
 int r;

 if (!n)
  return -ENOMEM;

 dev = &n->dev;
 n->vqs[VHOST_NET_VQ_TX].handle_kick = handle_tx_kick;
 n->vqs[VHOST_NET_VQ_RX].handle_kick = handle_rx_kick;
 r = vhost_dev_init(dev, n->vqs, VHOST_NET_VQ_MAX);
 if (r < 0) {
  kfree(n);
  return r;
 }

 vhost_poll_init(n->poll + VHOST_NET_VQ_TX, handle_tx_net, POLLOUT, dev);
 vhost_poll_init(n->poll + VHOST_NET_VQ_RX, handle_rx_net, POLLIN, dev);
 n->tx_poll_state = VHOST_NET_POLL_DISABLED;

 f->private_data = n;

 return 0;
}
