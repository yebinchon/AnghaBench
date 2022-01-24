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
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct set_elem {scalar_t__ id; } ;
struct list_set {scalar_t__ size; int /*<<< orphan*/  timeout; } ;
struct ip_set {struct list_set* data; } ;
typedef  enum ipset_adt { ____Placeholder_ipset_adt } ipset_adt ;

/* Variables and functions */
 int EINVAL ; 
#define  IPSET_ADD 130 
#define  IPSET_DEL 129 
 scalar_t__ IPSET_INVALID_ID ; 
#define  IPSET_TEST 128 
 int FUNC0 (scalar_t__,struct sk_buff const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,struct sk_buff const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,struct sk_buff const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct set_elem* FUNC3 (struct list_set*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct list_set*,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct ip_set *set, const struct sk_buff *skb,
	      enum ipset_adt adt, u8 pf, u8 dim, u8 flags)
{
	struct list_set *map = set->data;
	struct set_elem *elem;
	u32 i;
	int ret;

	for (i = 0; i < map->size; i++) {
		elem = FUNC3(map, i);
		if (elem->id == IPSET_INVALID_ID)
			return 0;
		if (FUNC5(map->timeout) && FUNC4(map, i))
			continue;
		switch (adt) {
		case IPSET_TEST:
			ret = FUNC2(elem->id, skb, pf, dim, flags);
			if (ret > 0)
				return ret;
			break;
		case IPSET_ADD:
			ret = FUNC0(elem->id, skb, pf, dim, flags);
			if (ret == 0)
				return ret;
			break;
		case IPSET_DEL:
			ret = FUNC1(elem->id, skb, pf, dim, flags);
			if (ret == 0)
				return ret;
			break;
		default:
			break;
		}
	}
	return -EINVAL;
}