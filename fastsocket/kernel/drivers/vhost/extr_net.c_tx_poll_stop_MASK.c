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
struct vhost_net {scalar_t__ tx_poll_state; scalar_t__ poll; } ;

/* Variables and functions */
 scalar_t__ VHOST_NET_POLL_STARTED ; 
 scalar_t__ VHOST_NET_POLL_STOPPED ; 
 scalar_t__ VHOST_NET_VQ_TX ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct vhost_net *net)
{
	if (FUNC0(net->tx_poll_state != VHOST_NET_POLL_STARTED))
		return;
	FUNC1(net->poll + VHOST_NET_VQ_TX);
	net->tx_poll_state = VHOST_NET_POLL_STOPPED;
}