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
struct ip_set {scalar_t__ ref; int /*<<< orphan*/  name; } ;
typedef  size_t ip_set_id_t ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOENT ; 
 size_t IPSET_ATTR_SETNAME ; 
 size_t IPSET_ATTR_SETNAME2 ; 
 int IPSET_ERR_EXIST_SETNAME2 ; 
 int IPSET_ERR_PROTOCOL ; 
 int IPSET_ERR_REFERENCED ; 
 int /*<<< orphan*/  IPSET_MAXNAMELEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 struct ip_set* FUNC1 (char*) ; 
 TYPE_1__** ip_set_list ; 
 size_t ip_set_max ; 
 int /*<<< orphan*/  ip_set_ref_lock ; 
 char* FUNC2 (struct nlattr const* const) ; 
 scalar_t__ FUNC3 (struct nlattr const* const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int
FUNC8(struct sock *ctnl, struct sk_buff *skb,
	      const struct nlmsghdr *nlh,
	      const struct nlattr * const attr[])
{
	struct ip_set *set;
	const char *name2;
	ip_set_id_t i;
	int ret = 0;

	if (FUNC7(FUNC3(attr) ||
		     attr[IPSET_ATTR_SETNAME] == NULL ||
		     attr[IPSET_ATTR_SETNAME2] == NULL))
		return -IPSET_ERR_PROTOCOL;

	set = FUNC1(FUNC2(attr[IPSET_ATTR_SETNAME]));
	if (set == NULL)
		return -ENOENT;

	FUNC4(&ip_set_ref_lock);
	if (set->ref != 0) {
		ret = -IPSET_ERR_REFERENCED;
		goto out;
	}

	name2 = FUNC2(attr[IPSET_ATTR_SETNAME2]);
	for (i = 0; i < ip_set_max; i++) {
		if (ip_set_list[i] != NULL &&
		    FUNC0(ip_set_list[i]->name, name2)) {
			ret = -IPSET_ERR_EXIST_SETNAME2;
			goto out;
		}
	}
	FUNC6(set->name, name2, IPSET_MAXNAMELEN);

out:
	FUNC5(&ip_set_ref_lock);
	return ret;
}