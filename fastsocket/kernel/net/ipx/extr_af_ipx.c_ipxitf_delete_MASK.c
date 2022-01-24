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
struct net_device {int dummy; } ;
struct ipx_interface_definition {scalar_t__ ipx_special; int /*<<< orphan*/  ipx_device; int /*<<< orphan*/  ipx_dlink_type; } ;
struct ipx_interface {int dummy; } ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int EPROTONOSUPPORT ; 
 scalar_t__ IPX_INTERNAL ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ipx_interface* FUNC1 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ipx_interface*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  ipx_interfaces_lock ; 
 struct ipx_interface* ipx_internal_net ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ipx_interface_definition *idef)
{
	struct net_device *dev = NULL;
	__be16 dlink_type = 0;
	struct ipx_interface *intrfc;
	int rc = 0;

	FUNC4(&ipx_interfaces_lock);
	if (idef->ipx_special == IPX_INTERNAL) {
		if (ipx_internal_net) {
			FUNC2(ipx_internal_net);
			goto out;
		}
		rc = -ENOENT;
		goto out;
	}

	dlink_type = FUNC3(idef->ipx_dlink_type);
	rc = -EPROTONOSUPPORT;
	if (!dlink_type)
		goto out;

	dev = FUNC0(&init_net, idef->ipx_device);
	rc = -ENODEV;
	if (!dev)
		goto out;

	intrfc = FUNC1(dev, dlink_type);
	rc = -EINVAL;
	if (!intrfc)
		goto out;
	FUNC2(intrfc);

	rc = 0;
out:
	FUNC5(&ipx_interfaces_lock);
	return rc;
}