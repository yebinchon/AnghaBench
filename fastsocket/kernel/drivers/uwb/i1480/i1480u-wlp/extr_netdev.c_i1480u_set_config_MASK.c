#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct ifmap {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * rc; } ;
struct i1480u {TYPE_1__ wlp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct i1480u* FUNC1 (struct net_device*) ; 

int FUNC2(struct net_device *net_dev, struct ifmap *map)
{
	int result;
	struct i1480u *i1480u = FUNC1(net_dev);
	FUNC0(i1480u->wlp.rc == NULL);
	result = 0;
	return result;
}