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
struct ip_set {char* name; int /*<<< orphan*/  ref; TYPE_1__* type; } ;
typedef  size_t ip_set_id_t ;
struct TYPE_2__ {scalar_t__ features; scalar_t__ family; } ;

/* Variables and functions */
 int ENOENT ; 
 size_t IPSET_ATTR_SETNAME ; 
 size_t IPSET_ATTR_SETNAME2 ; 
 int IPSET_ERR_EXIST_SETNAME2 ; 
 int IPSET_ERR_PROTOCOL ; 
 int IPSET_ERR_TYPE_MISMATCH ; 
 size_t IPSET_INVALID_ID ; 
 int IPSET_MAXNAMELEN ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 struct ip_set** ip_set_list ; 
 int /*<<< orphan*/  ip_set_ref_lock ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr const* const) ; 
 scalar_t__ FUNC2 (struct nlattr const* const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct sock *ctnl, struct sk_buff *skb,
	    const struct nlmsghdr *nlh,
	    const struct nlattr * const attr[])
{
	struct ip_set *from, *to;
	ip_set_id_t from_id, to_id;
	char from_name[IPSET_MAXNAMELEN];

	if (FUNC5(FUNC2(attr) ||
		     attr[IPSET_ATTR_SETNAME] == NULL ||
		     attr[IPSET_ATTR_SETNAME2] == NULL))
		return -IPSET_ERR_PROTOCOL;

	from_id = FUNC0(FUNC1(attr[IPSET_ATTR_SETNAME]));
	if (from_id == IPSET_INVALID_ID)
		return -ENOENT;

	to_id = FUNC0(FUNC1(attr[IPSET_ATTR_SETNAME2]));
	if (to_id == IPSET_INVALID_ID)
		return -IPSET_ERR_EXIST_SETNAME2;

	from = ip_set_list[from_id];
	to = ip_set_list[to_id];

	/* Features must not change.
	 * Not an artificial restriction anymore, as we must prevent
	 * possible loops created by swapping in setlist type of sets. */
	if (!(from->type->features == to->type->features &&
	      from->type->family == to->type->family))
		return -IPSET_ERR_TYPE_MISMATCH;

	FUNC3(from_name, from->name, IPSET_MAXNAMELEN);
	FUNC3(from->name, to->name, IPSET_MAXNAMELEN);
	FUNC3(to->name, from_name, IPSET_MAXNAMELEN);

	FUNC6(&ip_set_ref_lock);
	FUNC4(from->ref, to->ref);
	ip_set_list[from_id] = to;
	ip_set_list[to_id] = from;
	FUNC7(&ip_set_ref_lock);

	return 0;
}