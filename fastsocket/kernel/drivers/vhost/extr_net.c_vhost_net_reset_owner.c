
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; } ;
struct vhost_net {TYPE_1__ dev; } ;
struct socket {int file; } ;


 int fput (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long vhost_dev_check_owner (TYPE_1__*) ;
 long vhost_dev_reset_owner (TYPE_1__*) ;
 int vhost_net_flush (struct vhost_net*) ;
 int vhost_net_stop (struct vhost_net*,struct socket**,struct socket**) ;

__attribute__((used)) static long vhost_net_reset_owner(struct vhost_net *n)
{
 struct socket *tx_sock = ((void*)0);
 struct socket *rx_sock = ((void*)0);
 long err;
 mutex_lock(&n->dev.mutex);
 err = vhost_dev_check_owner(&n->dev);
 if (err)
  goto done;
 vhost_net_stop(n, &tx_sock, &rx_sock);
 vhost_net_flush(n);
 err = vhost_dev_reset_owner(&n->dev);
done:
 mutex_unlock(&n->dev.mutex);
 if (tx_sock)
  fput(tx_sock->file);
 if (rx_sock)
  fput(rx_sock->file);
 return err;
}
