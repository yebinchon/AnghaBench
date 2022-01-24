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
struct net_device {struct dn_dev* dn_ptr; } ;
struct dn_ifaddr {int ifa_scope; int /*<<< orphan*/  ifa_local; struct dn_ifaddr* ifa_next; } ;
struct dn_dev {struct dn_ifaddr* ifa_list; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  dev_base_lock ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __le16 FUNC3(const struct net_device *dev, __le16 daddr, int scope)
{
	__le16 saddr = 0;
	struct dn_dev *dn_db = dev->dn_ptr;
	struct dn_ifaddr *ifa;
	int best_match = 0;
	int ret;

	FUNC1(&dev_base_lock);
	for(ifa = dn_db->ifa_list; ifa; ifa = ifa->ifa_next) {
		if (ifa->ifa_scope > scope)
			continue;
		if (!daddr) {
			saddr = ifa->ifa_local;
			break;
		}
		ret = FUNC0(daddr, ifa->ifa_local);
		if (ret > best_match)
			saddr = ifa->ifa_local;
		if (best_match == 0)
			saddr = ifa->ifa_local;
	}
	FUNC2(&dev_base_lock);

	return saddr;
}