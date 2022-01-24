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
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct inet6_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int /*<<< orphan*/  IFLA_INET6_MAX ; 
 size_t IFLA_INET6_TOKEN ; 
 struct inet6_dev* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 scalar_t__ FUNC4 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, const struct nlattr *nla)
{
	int err = -EINVAL;
	struct inet6_dev *idev = FUNC1(dev);
	struct nlattr *tb[IFLA_INET6_MAX + 1];

	if (!idev)
		return -EAFNOSUPPORT;

	if (FUNC4(tb, IFLA_INET6_MAX, nla, NULL) < 0)
		FUNC0();

	if (tb[IFLA_INET6_TOKEN])
		err = FUNC2(idev, FUNC3(tb[IFLA_INET6_TOKEN]));

	return err;
}