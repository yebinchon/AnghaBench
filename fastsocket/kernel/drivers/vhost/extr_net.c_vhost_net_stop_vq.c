
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {int mutex; struct socket* private_data; } ;
struct vhost_net {int dummy; } ;
struct socket {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (struct socket*,int *) ;
 int vhost_net_disable_vq (struct vhost_net*,struct vhost_virtqueue*) ;

__attribute__((used)) static struct socket *vhost_net_stop_vq(struct vhost_net *n,
     struct vhost_virtqueue *vq)
{
 struct socket *sock;

 mutex_lock(&vq->mutex);
 sock = vq->private_data;
 vhost_net_disable_vq(n, vq);
 rcu_assign_pointer(vq->private_data, ((void*)0));
 mutex_unlock(&vq->mutex);
 return sock;
}
