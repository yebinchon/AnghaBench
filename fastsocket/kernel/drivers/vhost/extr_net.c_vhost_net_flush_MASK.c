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
struct vhost_net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VHOST_NET_VQ_RX ; 
 int /*<<< orphan*/  VHOST_NET_VQ_TX ; 
 int /*<<< orphan*/  FUNC0 (struct vhost_net*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct vhost_net *n)
{
	FUNC0(n, VHOST_NET_VQ_TX);
	FUNC0(n, VHOST_NET_VQ_RX);
}