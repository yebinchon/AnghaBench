#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vhost_virtqueue {struct socket* private_data; } ;
struct vhost_net {scalar_t__ poll; int /*<<< orphan*/  tx_poll_state; struct vhost_virtqueue* vqs; } ;
struct socket {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  VHOST_NET_POLL_STOPPED ; 
 scalar_t__ VHOST_NET_VQ_RX ; 
 int VHOST_NET_VQ_TX ; 
 int /*<<< orphan*/  FUNC0 (struct vhost_net*,struct socket*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct vhost_net *n,
				struct vhost_virtqueue *vq)
{
	struct socket *sock = vq->private_data;
	if (!sock)
		return;
	if (vq == n->vqs + VHOST_NET_VQ_TX) {
		n->tx_poll_state = VHOST_NET_POLL_STOPPED;
		FUNC0(n, sock);
	} else
		FUNC1(n->poll + VHOST_NET_VQ_RX, sock->file);
}