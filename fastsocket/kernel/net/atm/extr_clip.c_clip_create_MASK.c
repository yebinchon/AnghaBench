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
struct clip_priv {int number; struct net_device* next; int /*<<< orphan*/  xoff_lock; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 struct clip_priv* FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 struct net_device* clip_devs ; 
 int /*<<< orphan*/  clip_setup ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC7(int number)
{
	struct net_device *dev;
	struct clip_priv *clip_priv;
	int error;

	if (number != -1) {
		for (dev = clip_devs; dev; dev = FUNC0(dev)->next)
			if (FUNC0(dev)->number == number)
				return -EEXIST;
	} else {
		number = 0;
		for (dev = clip_devs; dev; dev = FUNC0(dev)->next)
			if (FUNC0(dev)->number >= number)
				number = FUNC0(dev)->number + 1;
	}
	dev = FUNC1(sizeof(struct clip_priv), "", clip_setup);
	if (!dev)
		return -ENOMEM;
	clip_priv = FUNC0(dev);
	FUNC6(dev->name, "atm%d", number);
	FUNC5(&clip_priv->xoff_lock);
	clip_priv->number = number;
	error = FUNC4(dev);
	if (error) {
		FUNC2(dev);
		return error;
	}
	clip_priv->next = clip_devs;
	clip_devs = dev;
	FUNC3("registered (net:%s)\n", dev->name);
	return number;
}