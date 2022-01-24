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
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TX_CONF ; 
 int TX_LOOPBACK_MASK ; 
 int TX_LOOPBACK_NONE ; 
 int TX_LOOPBACK_SHIFT ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct net_device *dev)
{
	u32 txconf;

	txconf = FUNC0(dev,TX_CONF);
	txconf = txconf &~ TX_LOOPBACK_MASK;
	txconf = txconf | (TX_LOOPBACK_NONE <<TX_LOOPBACK_SHIFT);
	FUNC1(dev,TX_CONF,txconf);
}