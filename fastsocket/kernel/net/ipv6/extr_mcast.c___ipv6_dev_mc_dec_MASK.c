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
struct inet6_dev {int /*<<< orphan*/  lock; struct ifmcaddr6* mc_list; } ;
struct in6_addr {int dummy; } ;
struct ifmcaddr6 {scalar_t__ mca_users; struct ifmcaddr6* next; int /*<<< orphan*/  mca_addr; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct ifmcaddr6*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifmcaddr6*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct inet6_dev *idev, const struct in6_addr *addr)
{
	struct ifmcaddr6 *ma, **map;

	FUNC3(&idev->lock);
	for (map = &idev->mc_list; (ma=*map) != NULL; map = &ma->next) {
		if (FUNC1(&ma->mca_addr, addr)) {
			if (--ma->mca_users == 0) {
				*map = ma->next;
				FUNC4(&idev->lock);

				FUNC0(ma);

				FUNC2(ma);
				return 0;
			}
			FUNC4(&idev->lock);
			return 0;
		}
	}
	FUNC4(&idev->lock);

	return -ENOENT;
}