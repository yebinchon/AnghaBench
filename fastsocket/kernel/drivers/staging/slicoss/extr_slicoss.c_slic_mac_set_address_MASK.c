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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;
struct adapter {int /*<<< orphan*/  currmacaddr; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, void *ptr)
{
	struct adapter *adapter = (struct adapter *)FUNC1(dev);
	struct sockaddr *addr = ptr;

	if (FUNC2(dev))
		return -EBUSY;
	if (!adapter)
		return -EBUSY;

	FUNC0(dev->dev_addr, addr->sa_data, dev->addr_len);
	FUNC0(adapter->currmacaddr, addr->sa_data, dev->addr_len);

	FUNC3(adapter, true);
	return 0;
}