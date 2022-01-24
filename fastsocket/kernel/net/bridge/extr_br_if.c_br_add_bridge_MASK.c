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
struct net_device {int /*<<< orphan*/  name; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  br_type ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct net_device* FUNC4 (struct net*,char const*) ; 
 int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

int FUNC10(struct net *net, const char *name)
{
	struct net_device *dev;
	int ret;

	dev = FUNC4(net, name);
	if (!dev)
		return -ENOMEM;

	FUNC6();
	if (FUNC8(dev->name, '%')) {
		ret = FUNC2(dev, dev->name);
		if (ret < 0)
			goto out_free;
	}

	FUNC0(dev, &br_type);

	ret = FUNC5(dev);
	if (ret)
		goto out_free;

	ret = FUNC1(dev);
	if (ret)
		FUNC9(dev);
 out:
	FUNC7();
	return ret;

out_free:
	FUNC3(dev);
	goto out;
}