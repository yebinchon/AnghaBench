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
struct ipmac_telem {int match; int timeout; int /*<<< orphan*/  ether; } ;
struct ipmac {int /*<<< orphan*/  ether; int /*<<< orphan*/  id; } ;
struct ip_set {struct bitmap_ipmac* data; } ;
struct bitmap_ipmac {int timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int IPSET_ERR_EXIST ; 
 int IPSET_FLAG_EXIST ; 
#define  MAC_EMPTY 130 
#define  MAC_FILLED 129 
#define  MAC_UNSET 128 
 int /*<<< orphan*/  FUNC0 (struct bitmap_ipmac*,int /*<<< orphan*/ ) ; 
 struct ipmac_telem* FUNC1 (struct bitmap_ipmac*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct ip_set *set, void *value, u32 timeout, u32 flags)
{
	struct bitmap_ipmac *map = set->data;
	const struct ipmac *data = value;
	struct ipmac_telem *elem = FUNC1(map, data->id);
	bool flag_exist = flags & IPSET_FLAG_EXIST;

	switch (elem->match) {
	case MAC_UNSET:
		if (!(data->ether || flag_exist))
			/* Already added without ethernet address */
			return -IPSET_ERR_EXIST;
		/* Fill the MAC address and activate the timer */
		FUNC3(elem->ether, data->ether, ETH_ALEN);
		elem->match = MAC_FILLED;
		if (timeout == map->timeout)
			/* Timeout was not specified, get stored one */
			timeout = elem->timeout;
		elem->timeout = FUNC2(timeout);
		break;
	case MAC_FILLED:
		if (!(FUNC0(map, data->id) || flag_exist))
			return -IPSET_ERR_EXIST;
		/* Fall through */
	case MAC_EMPTY:
		if (data->ether) {
			FUNC3(elem->ether, data->ether, ETH_ALEN);
			elem->match = MAC_FILLED;
		} else
			elem->match = MAC_UNSET;
		/* If MAC is unset yet, we store plain timeout value
		 * because the timer is not activated yet
		 * and we can reuse it later when MAC is filled out,
		 * possibly by the kernel */
		elem->timeout = data->ether ? FUNC2(timeout)
					    : timeout;
		break;
	}

	return 0;
}