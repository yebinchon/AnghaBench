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
struct net_device {int type; int /*<<< orphan*/  addr_len; int /*<<< orphan*/  broadcast; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
#define  ARPHRD_ARCNET 133 
#define  ARPHRD_ETHER 132 
#define  ARPHRD_FDDI 131 
#define  ARPHRD_IEEE802 130 
#define  ARPHRD_IEEE802_TR 129 
#define  ARPHRD_INFINIBAND 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct in6_addr*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct in6_addr*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct in6_addr*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct in6_addr*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct in6_addr *addr, char *buf, struct net_device *dev, int dir)
{
	switch (dev->type) {
	case ARPHRD_ETHER:
	case ARPHRD_IEEE802:	/* Not sure. Check it later. --ANK */
	case ARPHRD_FDDI:
		FUNC1(addr, buf);
		return 0;
	case ARPHRD_IEEE802_TR:
		FUNC3(addr,buf);
		return 0;
	case ARPHRD_ARCNET:
		FUNC0(addr, buf);
		return 0;
	case ARPHRD_INFINIBAND:
		FUNC2(addr, dev->broadcast, buf);
		return 0;
	default:
		if (dir) {
			FUNC4(buf, dev->broadcast, dev->addr_len);
			return 0;
		}
	}
	return -EINVAL;
}