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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  cmpk_tx_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 

__attribute__((used)) static	void
FUNC2(
	struct net_device *dev,
	u8*	   pmsg)
{
	cmpk_tx_status_t	rx_tx_sts;	/* */

	FUNC1((void*)&rx_tx_sts, (void*)pmsg, sizeof(cmpk_tx_status_t));
	/* 2. Use tx feedback info to count TX statistics. */
	FUNC0(dev, &rx_tx_sts);

}