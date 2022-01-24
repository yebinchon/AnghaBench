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
typedef  int u32 ;
struct net_device {int /*<<< orphan*/  features; } ;

/* Variables and functions */
 int ETH_FLAG_LRO ; 
 int ETH_FLAG_RXHASH ; 
 int /*<<< orphan*/  NETIF_F_LRO ; 
 int /*<<< orphan*/  NETIF_F_RXHASH ; 

int FUNC0(struct net_device *dev, u32 data)
{
	if (data & ETH_FLAG_LRO)
		dev->features |= NETIF_F_LRO;
	else
		dev->features &= ~NETIF_F_LRO;

	if (data & ETH_FLAG_RXHASH)
		dev->features |= NETIF_F_RXHASH;
	else
		dev->features &= ~NETIF_F_RXHASH;

	return 0;
}