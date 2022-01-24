#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct virtio_net_hdr_mrg_rxbuf {int dummy; } ;
struct virtio_net_hdr {int dummy; } ;
struct TYPE_4__ {int acked_features; int /*<<< orphan*/  mutex; } ;
struct vhost_net {TYPE_2__ dev; TYPE_1__* vqs; } ;
struct TYPE_3__ {size_t vhost_hlen; size_t sock_hlen; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int EFAULT ; 
 int VHOST_F_LOG_ALL ; 
 int VHOST_NET_F_VIRTIO_NET_HDR ; 
 int VHOST_NET_VQ_MAX ; 
 int VIRTIO_NET_F_MRG_RXBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct vhost_net*) ; 

__attribute__((used)) static int FUNC5(struct vhost_net *n, u64 features)
{
	size_t vhost_hlen, sock_hlen, hdr_len;
	int i;

	hdr_len = (features & (1 << VIRTIO_NET_F_MRG_RXBUF)) ?
			sizeof(struct virtio_net_hdr_mrg_rxbuf) :
			sizeof(struct virtio_net_hdr);
	if (features & (1 << VHOST_NET_F_VIRTIO_NET_HDR)) {
		/* vhost provides vnet_hdr */
		vhost_hlen = hdr_len;
		sock_hlen = 0;
	} else {
		/* socket provides vnet_hdr */
		vhost_hlen = 0;
		sock_hlen = hdr_len;
	}
	FUNC0(&n->dev.mutex);
	if ((features & (1 << VHOST_F_LOG_ALL)) &&
	    !FUNC3(&n->dev)) {
		FUNC1(&n->dev.mutex);
		return -EFAULT;
	}
	n->dev.acked_features = features;
	FUNC2();
	for (i = 0; i < VHOST_NET_VQ_MAX; ++i) {
		FUNC0(&n->vqs[i].mutex);
		n->vqs[i].vhost_hlen = vhost_hlen;
		n->vqs[i].sock_hlen = sock_hlen;
		FUNC1(&n->vqs[i].mutex);
	}
	FUNC4(n);
	FUNC1(&n->dev.mutex);
	return 0;
}