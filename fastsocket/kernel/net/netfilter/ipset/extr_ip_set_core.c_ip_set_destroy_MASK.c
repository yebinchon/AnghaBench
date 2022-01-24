#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
typedef  size_t ip_set_id_t ;
struct TYPE_2__ {scalar_t__ ref; } ;

/* Variables and functions */
 int ENOENT ; 
 size_t IPSET_ATTR_SETNAME ; 
 int IPSET_ERR_BUSY ; 
 int IPSET_ERR_PROTOCOL ; 
 size_t IPSET_INVALID_ID ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 TYPE_1__** ip_set_list ; 
 size_t ip_set_max ; 
 int /*<<< orphan*/  ip_set_ref_lock ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr const* const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct sock *ctnl, struct sk_buff *skb,
	       const struct nlmsghdr *nlh,
	       const struct nlattr * const attr[])
{
	ip_set_id_t i;
	int ret = 0;

	if (FUNC6(FUNC3(attr)))
		return -IPSET_ERR_PROTOCOL;

	/* Commands are serialized and references are
	 * protected by the ip_set_ref_lock.
	 * External systems (i.e. xt_set) must call
	 * ip_set_put|get_nfnl_* functions, that way we
	 * can safely check references here.
	 *
	 * list:set timer can only decrement the reference
	 * counter, so if it's already zero, we can proceed
	 * without holding the lock.
	 */
	FUNC4(&ip_set_ref_lock);
	if (!attr[IPSET_ATTR_SETNAME]) {
		for (i = 0; i < ip_set_max; i++) {
			if (ip_set_list[i] != NULL && ip_set_list[i]->ref) {
				ret = -IPSET_ERR_BUSY;
				goto out;
			}
		}
		FUNC5(&ip_set_ref_lock);
		for (i = 0; i < ip_set_max; i++) {
			if (ip_set_list[i] != NULL)
				FUNC1(i);
		}
	} else {
		i = FUNC0(FUNC2(attr[IPSET_ATTR_SETNAME]));
		if (i == IPSET_INVALID_ID) {
			ret = -ENOENT;
			goto out;
		} else if (ip_set_list[i]->ref) {
			ret = -IPSET_ERR_BUSY;
			goto out;
		}
		FUNC5(&ip_set_ref_lock);

		FUNC1(i);
	}
	return 0;
out:
	FUNC5(&ip_set_ref_lock);
	return ret;
}