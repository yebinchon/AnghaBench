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
struct ipx_interface {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 struct ipx_interface* FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipx_interfaces_lock ; 
 int /*<<< orphan*/  FUNC1 (struct ipx_interface*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ipx_interface *FUNC4(struct net_device *dev,
						    __be16 datalink)
{
	struct ipx_interface *i;

	FUNC2(&ipx_interfaces_lock);
	i = FUNC0(dev, datalink);
	if (i)
		FUNC1(i);
	FUNC3(&ipx_interfaces_lock);
	return i;
}