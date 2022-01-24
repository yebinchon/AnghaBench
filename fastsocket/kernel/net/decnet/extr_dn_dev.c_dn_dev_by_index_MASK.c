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
struct net_device {struct dn_dev* dn_ptr; } ;
struct dn_dev {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 

__attribute__((used)) static struct dn_dev *FUNC2(int ifindex)
{
	struct net_device *dev;
	struct dn_dev *dn_dev = NULL;
	dev = FUNC0(&init_net, ifindex);
	if (dev) {
		dn_dev = dev->dn_ptr;
		FUNC1(dev);
	}

	return dn_dev;
}