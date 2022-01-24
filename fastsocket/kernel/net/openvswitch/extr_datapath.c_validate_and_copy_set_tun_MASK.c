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
typedef  int /*<<< orphan*/  tun_key ;
struct sw_flow_actions {int dummy; } ;
struct ovs_key_ipv4_tunnel {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OVS_ACTION_ATTR_SET ; 
 int /*<<< orphan*/  OVS_KEY_ATTR_IPV4_TUNNEL ; 
 int FUNC0 (struct sw_flow_actions**,int /*<<< orphan*/ ,struct ovs_key_ipv4_tunnel*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sw_flow_actions*,int) ; 
 int FUNC2 (struct sw_flow_actions**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr const*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct ovs_key_ipv4_tunnel*) ; 

__attribute__((used)) static int FUNC5(const struct nlattr *attr,
				     struct sw_flow_actions **sfa)
{
	struct ovs_key_ipv4_tunnel tun_key;
	int err, start;

	err = FUNC4(FUNC3(attr), &tun_key);
	if (err)
		return err;

	start = FUNC2(sfa, OVS_ACTION_ATTR_SET);
	if (start < 0)
		return start;

	err = FUNC0(sfa, OVS_KEY_ATTR_IPV4_TUNNEL, &tun_key, sizeof(tun_key));
	FUNC1(*sfa, start);

	return err;
}