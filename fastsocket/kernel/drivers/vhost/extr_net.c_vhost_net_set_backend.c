
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhost_virtqueue {int mutex; struct vhost_ubuf_ref* private_data; struct vhost_ubuf_ref* ubufs; } ;
struct vhost_ubuf_ref {int file; } ;
struct TYPE_2__ {int mutex; } ;
struct vhost_net {TYPE_1__ dev; struct vhost_virtqueue* vqs; } ;
struct socket {int file; } ;


 int EFAULT ;
 int ENOBUFS ;
 scalar_t__ IS_ERR (struct vhost_ubuf_ref*) ;
 int PTR_ERR (struct vhost_ubuf_ref*) ;
 unsigned int VHOST_NET_VQ_MAX ;
 int fput (int ) ;
 struct vhost_ubuf_ref* get_socket (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (struct vhost_ubuf_ref*,struct vhost_ubuf_ref*) ;
 int vhost_dev_check_owner (TYPE_1__*) ;
 int vhost_init_used (struct vhost_virtqueue*) ;
 int vhost_net_disable_vq (struct vhost_net*,struct vhost_virtqueue*) ;
 int vhost_net_enable_vq (struct vhost_net*,struct vhost_virtqueue*) ;
 int vhost_net_flush_vq (struct vhost_net*,unsigned int) ;
 scalar_t__ vhost_sock_zcopy (struct vhost_ubuf_ref*) ;
 struct vhost_ubuf_ref* vhost_ubuf_alloc (struct vhost_virtqueue*,int) ;
 int vhost_ubuf_put_and_wait (struct vhost_ubuf_ref*) ;
 int vhost_vq_access_ok (struct vhost_virtqueue*) ;
 int vhost_zerocopy_signal_used (struct vhost_virtqueue*) ;

__attribute__((used)) static long vhost_net_set_backend(struct vhost_net *n, unsigned index, int fd)
{
 struct socket *sock, *oldsock;
 struct vhost_virtqueue *vq;
 struct vhost_ubuf_ref *ubufs, *oldubufs = ((void*)0);
 int r;

 mutex_lock(&n->dev.mutex);
 r = vhost_dev_check_owner(&n->dev);
 if (r)
  goto err;

 if (index >= VHOST_NET_VQ_MAX) {
  r = -ENOBUFS;
  goto err;
 }
 vq = n->vqs + index;
 mutex_lock(&vq->mutex);


 if (!vhost_vq_access_ok(vq)) {
  r = -EFAULT;
  goto err_vq;
 }
 sock = get_socket(fd);
 if (IS_ERR(sock)) {
  r = PTR_ERR(sock);
  goto err_vq;
 }


 oldsock = vq->private_data;
 if (sock != oldsock) {
  ubufs = vhost_ubuf_alloc(vq, sock && vhost_sock_zcopy(sock));
  if (IS_ERR(ubufs)) {
   r = PTR_ERR(ubufs);
   goto err_ubufs;
  }
  oldubufs = vq->ubufs;
  vq->ubufs = ubufs;
  vhost_net_disable_vq(n, vq);
  rcu_assign_pointer(vq->private_data, sock);
  vhost_net_enable_vq(n, vq);

  r = vhost_init_used(vq);
  if (r)
   goto err_vq;
 }

 mutex_unlock(&vq->mutex);

 if (oldubufs) {
  vhost_ubuf_put_and_wait(oldubufs);
  mutex_lock(&vq->mutex);
  vhost_zerocopy_signal_used(vq);
  mutex_unlock(&vq->mutex);
 }

 if (oldsock) {
  vhost_net_flush_vq(n, index);
  fput(oldsock->file);
 }

 mutex_unlock(&n->dev.mutex);
 return 0;

err_ubufs:
 fput(sock->file);
err_vq:
 mutex_unlock(&vq->mutex);
err:
 mutex_unlock(&n->dev.mutex);
 return r;
}
