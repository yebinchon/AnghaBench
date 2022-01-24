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
typedef  scalar_t__ u16 ;
struct nlattr {int dummy; } ;
struct ifla_vlan_flags {int flags; int mask; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int ERANGE ; 
 scalar_t__ ETH_ALEN ; 
 size_t IFLA_ADDRESS ; 
 size_t IFLA_VLAN_EGRESS_QOS ; 
 size_t IFLA_VLAN_FLAGS ; 
 size_t IFLA_VLAN_ID ; 
 size_t IFLA_VLAN_INGRESS_QOS ; 
 int VLAN_FLAG_GVRP ; 
 int VLAN_FLAG_REORDER_HDR ; 
 scalar_t__ VLAN_VID_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct ifla_vlan_flags*) ; 
 struct ifla_vlan_flags* FUNC1 (struct nlattr*) ; 
 scalar_t__ FUNC2 (struct nlattr*) ; 
 scalar_t__ FUNC3 (struct nlattr*) ; 
 int FUNC4 (struct nlattr*) ; 

__attribute__((used)) static int FUNC5(struct nlattr *tb[], struct nlattr *data[])
{
	struct ifla_vlan_flags *flags;
	u16 id;
	int err;

	if (tb[IFLA_ADDRESS]) {
		if (FUNC3(tb[IFLA_ADDRESS]) != ETH_ALEN)
			return -EINVAL;
		if (!FUNC0(FUNC1(tb[IFLA_ADDRESS])))
			return -EADDRNOTAVAIL;
	}

	if (!data)
		return -EINVAL;

	if (data[IFLA_VLAN_ID]) {
		id = FUNC2(data[IFLA_VLAN_ID]);
		if (id >= VLAN_VID_MASK)
			return -ERANGE;
	}
	if (data[IFLA_VLAN_FLAGS]) {
		flags = FUNC1(data[IFLA_VLAN_FLAGS]);
		if ((flags->flags & flags->mask) &
		    ~(VLAN_FLAG_REORDER_HDR | VLAN_FLAG_GVRP))
			return -EINVAL;
	}

	err = FUNC4(data[IFLA_VLAN_INGRESS_QOS]);
	if (err < 0)
		return err;
	err = FUNC4(data[IFLA_VLAN_EGRESS_QOS]);
	if (err < 0)
		return err;
	return 0;
}