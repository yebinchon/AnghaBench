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
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * destroy_conntrack ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  ip_ct_attach ; 
 scalar_t__ FUNC0 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * nf_conntrack_attach ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 (struct net*) ; 
 int /*<<< orphan*/  nf_ct_destroy ; 
 int /*<<< orphan*/  nf_ct_nat_offset ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct net *net)
{
	int ret;

	if (FUNC0(net, &init_net)) {
		ret = FUNC2();
		if (ret < 0)
			goto out_init_net;
	}
	ret = FUNC3(net);
	if (ret < 0)
		goto out_net;

	if (FUNC0(net, &init_net)) {
		/* For use by REJECT target */
		FUNC4(ip_ct_attach, nf_conntrack_attach);
		FUNC4(nf_ct_destroy, destroy_conntrack);

		/* Howto get NAT offsets */
		FUNC4(nf_ct_nat_offset, NULL);
	}
	return 0;

out_net:
	if (FUNC0(net, &init_net))
		FUNC1();
out_init_net:
	return ret;
}