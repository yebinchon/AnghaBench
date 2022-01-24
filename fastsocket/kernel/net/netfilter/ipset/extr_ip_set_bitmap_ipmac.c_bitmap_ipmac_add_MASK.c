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
typedef  int /*<<< orphan*/  u32 ;
struct ipmac_elem {int match; int /*<<< orphan*/  ether; } ;
struct ipmac {int /*<<< orphan*/  ether; int /*<<< orphan*/  id; } ;
struct ip_set {struct bitmap_ipmac* data; } ;
struct bitmap_ipmac {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int IPSET_ERR_EXIST ; 
#define  MAC_EMPTY 130 
#define  MAC_FILLED 129 
#define  MAC_UNSET 128 
 struct ipmac_elem* FUNC0 (struct bitmap_ipmac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct ip_set *set, void *value, u32 timeout, u32 flags)
{
	struct bitmap_ipmac *map = set->data;
	const struct ipmac *data = value;
	struct ipmac_elem *elem = FUNC0(map, data->id);

	switch (elem->match) {
	case MAC_UNSET:
		if (!data->ether)
			/* Already added without ethernet address */
			return -IPSET_ERR_EXIST;
		/* Fill the MAC address */
		FUNC1(elem->ether, data->ether, ETH_ALEN);
		elem->match = MAC_FILLED;
		break;
	case MAC_FILLED:
		return -IPSET_ERR_EXIST;
	case MAC_EMPTY:
		if (data->ether) {
			FUNC1(elem->ether, data->ether, ETH_ALEN);
			elem->match = MAC_FILLED;
		} else
			elem->match = MAC_UNSET;
	}

	return 0;
}