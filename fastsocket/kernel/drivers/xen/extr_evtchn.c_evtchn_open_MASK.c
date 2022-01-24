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
struct per_user_data {int /*<<< orphan*/  ring_cons_mutex; int /*<<< orphan*/  bind_mutex; struct per_user_data* name; int /*<<< orphan*/ * ring; int /*<<< orphan*/  evtchn_wait; } ;
struct inode {int dummy; } ;
struct file {struct per_user_data* private_data; } ;
typedef  int /*<<< orphan*/  evtchn_port_t ;
struct TYPE_2__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct per_user_data* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct per_user_data*) ; 
 struct per_user_data* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *filp)
{
	struct per_user_data *u;

	u = FUNC4(sizeof(*u), GFP_KERNEL);
	if (u == NULL)
		return -ENOMEM;

	u->name = FUNC2(GFP_KERNEL, "evtchn:%s", current->comm);
	if (u->name == NULL) {
		FUNC3(u);
		return -ENOMEM;
	}

	FUNC1(&u->evtchn_wait);

	u->ring = (evtchn_port_t *)FUNC0(GFP_KERNEL);
	if (u->ring == NULL) {
		FUNC3(u->name);
		FUNC3(u);
		return -ENOMEM;
	}

	FUNC5(&u->bind_mutex);
	FUNC5(&u->ring_cons_mutex);

	filp->private_data = u;

	return 0;
}