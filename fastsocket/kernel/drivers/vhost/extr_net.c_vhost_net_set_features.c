
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct virtio_net_hdr_mrg_rxbuf {int dummy; } ;
struct virtio_net_hdr {int dummy; } ;
struct TYPE_4__ {int acked_features; int mutex; } ;
struct vhost_net {TYPE_2__ dev; TYPE_1__* vqs; } ;
struct TYPE_3__ {size_t vhost_hlen; size_t sock_hlen; int mutex; } ;


 int EFAULT ;
 int VHOST_F_LOG_ALL ;
 int VHOST_NET_F_VIRTIO_NET_HDR ;
 int VHOST_NET_VQ_MAX ;
 int VIRTIO_NET_F_MRG_RXBUF ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smp_wmb () ;
 int vhost_log_access_ok (TYPE_2__*) ;
 int vhost_net_flush (struct vhost_net*) ;

__attribute__((used)) static int vhost_net_set_features(struct vhost_net *n, u64 features)
{
 size_t vhost_hlen, sock_hlen, hdr_len;
 int i;

 hdr_len = (features & (1 << VIRTIO_NET_F_MRG_RXBUF)) ?
   sizeof(struct virtio_net_hdr_mrg_rxbuf) :
   sizeof(struct virtio_net_hdr);
 if (features & (1 << VHOST_NET_F_VIRTIO_NET_HDR)) {

  vhost_hlen = hdr_len;
  sock_hlen = 0;
 } else {

  vhost_hlen = 0;
  sock_hlen = hdr_len;
 }
 mutex_lock(&n->dev.mutex);
 if ((features & (1 << VHOST_F_LOG_ALL)) &&
     !vhost_log_access_ok(&n->dev)) {
  mutex_unlock(&n->dev.mutex);
  return -EFAULT;
 }
 n->dev.acked_features = features;
 smp_wmb();
 for (i = 0; i < VHOST_NET_VQ_MAX; ++i) {
  mutex_lock(&n->vqs[i].mutex);
  n->vqs[i].vhost_hlen = vhost_hlen;
  n->vqs[i].sock_hlen = sock_hlen;
  mutex_unlock(&n->vqs[i].mutex);
 }
 vhost_net_flush(n);
 mutex_unlock(&n->dev.mutex);
 return 0;
}
