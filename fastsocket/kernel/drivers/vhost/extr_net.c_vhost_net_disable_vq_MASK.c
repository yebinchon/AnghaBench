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
struct vhost_virtqueue {int /*<<< orphan*/  private_data; } ;
struct vhost_net {scalar_t__ poll; int /*<<< orphan*/  tx_poll_state; struct vhost_virtqueue* vqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  VHOST_NET_POLL_DISABLED ; 
 scalar_t__ VHOST_NET_VQ_RX ; 
 int VHOST_NET_VQ_TX ; 
 int /*<<< orphan*/  FUNC0 (struct vhost_net*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct vhost_net *n,
				 struct vhost_virtqueue *vq)
{
	if (!vq->private_data)
		return;
	if (vq == n->vqs + VHOST_NET_VQ_TX) {
		FUNC0(n);
		n->tx_poll_state = VHOST_NET_POLL_DISABLED;
	} else
		FUNC1(n->poll + VHOST_NET_VQ_RX);
}