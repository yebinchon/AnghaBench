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
struct net_device {int hard_header_len; int mtu; } ;
struct iphdr {int dummy; } ;
struct ip_tunnel {int hlen; } ;

/* Variables and functions */
 int EINVAL ; 
 struct ip_tunnel* FUNC0 (struct net_device*) ; 

int FUNC1(struct net_device *dev, int new_mtu)
{
	struct ip_tunnel *tunnel = FUNC0(dev);
	int t_hlen = tunnel->hlen + sizeof(struct iphdr);

	if (new_mtu < 68 ||
	    new_mtu > 0xFFF8 - dev->hard_header_len - t_hlen)
		return -EINVAL;
	dev->mtu = new_mtu;
	return 0;
}