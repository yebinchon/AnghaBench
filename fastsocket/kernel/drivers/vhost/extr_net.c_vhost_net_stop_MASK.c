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
struct vhost_net {scalar_t__ vqs; } ;
struct socket {int dummy; } ;

/* Variables and functions */
 scalar_t__ VHOST_NET_VQ_RX ; 
 scalar_t__ VHOST_NET_VQ_TX ; 
 struct socket* FUNC0 (struct vhost_net*,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct vhost_net *n, struct socket **tx_sock,
			   struct socket **rx_sock)
{
	*tx_sock = FUNC0(n, n->vqs + VHOST_NET_VQ_TX);
	*rx_sock = FUNC0(n, n->vqs + VHOST_NET_VQ_RX);
}