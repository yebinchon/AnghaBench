#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct sk_buff {int dummy; } ;
struct ip_set {scalar_t__ family; int /*<<< orphan*/  lock; TYPE_2__* variant; TYPE_1__* type; int /*<<< orphan*/  name; } ;
typedef  size_t ip_set_id_t ;
struct TYPE_4__ {int (* kadt ) (struct ip_set*,struct sk_buff const*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ;} ;
struct TYPE_3__ {scalar_t__ dimension; } ;

/* Variables and functions */
 scalar_t__ AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPSET_ADD ; 
 struct ip_set** ip_set_list ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC2 (struct ip_set*,struct sk_buff const*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(ip_set_id_t index, const struct sk_buff *skb,
	   u8 family, u8 dim, u8 flags)
{
	struct ip_set *set = ip_set_list[index];
	int ret;

	FUNC0(set == NULL);
	FUNC1("set %s, index %u\n", set->name, index);

	if (dim < set->type->dimension ||
	    !(family == set->family || set->family == AF_UNSPEC))
		return 0;

	FUNC3(&set->lock);
	ret = set->variant->kadt(set, skb, IPSET_ADD, family, dim, flags);
	FUNC4(&set->lock);

	return ret;
}