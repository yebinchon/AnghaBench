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
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int /*<<< orphan*/  CAP_SYS_MODULE ; 
 struct net_device* FUNC0 (struct net*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_base_lock ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,char const*) ; 

void FUNC6(struct net *net, const char *name)
{
	struct net_device *dev;
	int no_module;

	FUNC3(&dev_base_lock);
	dev = FUNC0(net, name);
	FUNC4(&dev_base_lock);

	no_module = !dev;
	if (no_module && FUNC1(CAP_NET_ADMIN))
		no_module = FUNC5("netdev-%s", name);
	if (no_module && FUNC1(CAP_SYS_MODULE)) {
		if (!FUNC5("%s", name))
			FUNC2("Loading kernel module for a network device "
"with CAP_SYS_MODULE (deprecated).  Use CAP_NET_ADMIN and alias netdev-%s "
"instead\n", name);
	}
}