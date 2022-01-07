
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_net {int dev; } ;
struct socket {int file; } ;
struct inode {int dummy; } ;
struct file {struct vhost_net* private_data; } ;


 int fput (int ) ;
 int kfree (struct vhost_net*) ;
 int vhost_dev_cleanup (int *) ;
 int vhost_net_flush (struct vhost_net*) ;
 int vhost_net_stop (struct vhost_net*,struct socket**,struct socket**) ;

__attribute__((used)) static int vhost_net_release(struct inode *inode, struct file *f)
{
 struct vhost_net *n = f->private_data;
 struct socket *tx_sock;
 struct socket *rx_sock;

 vhost_net_stop(n, &tx_sock, &rx_sock);
 vhost_net_flush(n);
 vhost_dev_cleanup(&n->dev);
 if (tx_sock)
  fput(tx_sock->file);
 if (rx_sock)
  fput(rx_sock->file);


 vhost_net_flush(n);
 kfree(n);
 return 0;
}
