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
struct net_device {scalar_t__ dn_ptr; } ;
struct dn_ifaddr {int /*<<< orphan*/  ifa_local; } ;
struct dn_dev {struct dn_ifaddr* ifa_list; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int ENODEV ; 

__attribute__((used)) static int FUNC0(struct net_device *dev, __le16 *addr)
{
	struct dn_dev *dn_db = (struct dn_dev *)dev->dn_ptr;
	struct dn_ifaddr *ifa;
	int rv = -ENODEV;
	if (dn_db == NULL)
		goto out;
	ifa = dn_db->ifa_list;
	if (ifa != NULL) {
		*addr = ifa->ifa_local;
		rv = 0;
	}
out:
	return rv;
}