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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
typedef  size_t ip_set_id_t ;

/* Variables and functions */
 int ENOENT ; 
 size_t IPSET_ATTR_SETNAME ; 
 int IPSET_ERR_PROTOCOL ; 
 size_t IPSET_INVALID_ID ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** ip_set_list ; 
 size_t ip_set_max ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr const* const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct sock *ctnl, struct sk_buff *skb,
	     const struct nlmsghdr *nlh,
	     const struct nlattr * const attr[])
{
	ip_set_id_t i;

	if (FUNC4(FUNC3(attr)))
		return -IPSET_ERR_PROTOCOL;

	if (!attr[IPSET_ATTR_SETNAME]) {
		for (i = 0; i < ip_set_max; i++)
			if (ip_set_list[i] != NULL)
				FUNC1(ip_set_list[i]);
	} else {
		i = FUNC0(FUNC2(attr[IPSET_ATTR_SETNAME]));
		if (i == IPSET_INVALID_ID)
			return -ENOENT;

		FUNC1(ip_set_list[i]);
	}

	return 0;
}