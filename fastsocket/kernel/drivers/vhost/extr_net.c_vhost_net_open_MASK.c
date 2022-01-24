#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vhost_dev {int dummy; } ;
struct vhost_net {int /*<<< orphan*/  tx_poll_state; scalar_t__ poll; TYPE_1__* vqs; struct vhost_dev dev; } ;
struct inode {int dummy; } ;
struct file {struct vhost_net* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle_kick; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  POLLOUT ; 
 int /*<<< orphan*/  VHOST_NET_POLL_DISABLED ; 
 int /*<<< orphan*/  VHOST_NET_VQ_MAX ; 
 size_t VHOST_NET_VQ_RX ; 
 size_t VHOST_NET_VQ_TX ; 
 int /*<<< orphan*/  handle_rx_kick ; 
 int /*<<< orphan*/  handle_rx_net ; 
 int /*<<< orphan*/  handle_tx_kick ; 
 int /*<<< orphan*/  handle_tx_net ; 
 int /*<<< orphan*/  FUNC0 (struct vhost_net*) ; 
 struct vhost_net* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct vhost_dev*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vhost_dev*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *f)
{
	struct vhost_net *n = FUNC1(sizeof *n, GFP_KERNEL);
	struct vhost_dev *dev;
	int r;

	if (!n)
		return -ENOMEM;

	dev = &n->dev;
	n->vqs[VHOST_NET_VQ_TX].handle_kick = handle_tx_kick;
	n->vqs[VHOST_NET_VQ_RX].handle_kick = handle_rx_kick;
	r = FUNC2(dev, n->vqs, VHOST_NET_VQ_MAX);
	if (r < 0) {
		FUNC0(n);
		return r;
	}

	FUNC3(n->poll + VHOST_NET_VQ_TX, handle_tx_net, POLLOUT, dev);
	FUNC3(n->poll + VHOST_NET_VQ_RX, handle_rx_net, POLLIN, dev);
	n->tx_poll_state = VHOST_NET_POLL_DISABLED;

	f->private_data = n;

	return 0;
}