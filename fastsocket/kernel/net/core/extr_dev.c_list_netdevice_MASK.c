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
struct net_device {int /*<<< orphan*/  ifindex; int /*<<< orphan*/  index_hlist; int /*<<< orphan*/  name; int /*<<< orphan*/  name_hlist; int /*<<< orphan*/  dev_list; } ;
struct net {int /*<<< orphan*/  dev_base_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  dev_base_lock ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	struct net *net = FUNC3(dev);

	FUNC0();

	FUNC6(&dev_base_lock);
	FUNC5(&dev->dev_list, &net->dev_base_head);
	FUNC4(&dev->name_hlist, FUNC2(net, dev->name));
	FUNC4(&dev->index_hlist, FUNC1(net, dev->ifindex));
	FUNC7(&dev_base_lock);
	return 0;
}