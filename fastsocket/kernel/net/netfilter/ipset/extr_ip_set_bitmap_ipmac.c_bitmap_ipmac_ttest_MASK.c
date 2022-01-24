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
struct ipmac {int /*<<< orphan*/  id; int /*<<< orphan*/ * ether; } ;
struct ip_set {struct bitmap_ipmac* data; } ;
struct bitmap_ipmac {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
#define  MAC_FILLED 129 
#define  MAC_UNSET 128 
 int /*<<< orphan*/  FUNC0 (struct bitmap_ipmac const*,int /*<<< orphan*/ ) ; 
 struct ipmac_elem* FUNC1 (struct bitmap_ipmac const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct ip_set *set, void *value, u32 timeout, u32 flags)
{
	const struct bitmap_ipmac *map = set->data;
	const struct ipmac *data = value;
	const struct ipmac_elem *elem = FUNC1(map, data->id);

	switch (elem->match) {
	case MAC_UNSET:
		/* Trigger kernel to fill out the ethernet address */
		return -EAGAIN;
	case MAC_FILLED:
		return (data->ether == NULL ||
			FUNC2(data->ether, elem->ether) == 0) &&
		       !FUNC0(map, data->id);
	}
	return 0;
}