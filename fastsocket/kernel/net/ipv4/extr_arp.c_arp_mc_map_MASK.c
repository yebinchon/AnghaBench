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
struct net_device {int type; int /*<<< orphan*/  addr_len; int /*<<< orphan*/  broadcast; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
#define  ARPHRD_ETHER 132 
#define  ARPHRD_FDDI 131 
#define  ARPHRD_IEEE802 130 
#define  ARPHRD_IEEE802_TR 129 
#define  ARPHRD_INFINIBAND 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(__be32 addr, u8 *haddr, struct net_device *dev, int dir)
{
	switch (dev->type) {
	case ARPHRD_ETHER:
	case ARPHRD_FDDI:
	case ARPHRD_IEEE802:
		FUNC0(addr, haddr);
		return 0;
	case ARPHRD_IEEE802_TR:
		FUNC2(addr, haddr);
		return 0;
	case ARPHRD_INFINIBAND:
		FUNC1(addr, dev->broadcast, haddr);
		return 0;
	default:
		if (dir) {
			FUNC3(haddr, dev->broadcast, dev->addr_len);
			return 0;
		}
	}
	return -EINVAL;
}