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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int ext_priv_flags; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EBUSY ; 
 int IFF_LIVE_ADDR_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 

int FUNC3(struct net_device *dev, void *p)
{
	struct sockaddr *addr = p;

	if (!(FUNC1(dev)->ext_priv_flags & IFF_LIVE_ADDR_CHANGE)
	    && FUNC2(dev))
		return -EBUSY;
	if (!FUNC0(addr->sa_data))
		return -EADDRNOTAVAIL;
	return 0;
}