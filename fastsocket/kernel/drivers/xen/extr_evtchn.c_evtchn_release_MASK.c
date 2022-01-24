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
struct per_user_data {struct per_user_data* name; scalar_t__ ring; } ;
struct inode {int dummy; } ;
struct file {struct per_user_data* private_data; } ;

/* Variables and functions */
 int NR_EVENT_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (struct per_user_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct per_user_data*) ; 
 struct per_user_data** port_user ; 
 int /*<<< orphan*/  port_user_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *filp)
{
	int i;
	struct per_user_data *u = filp->private_data;

	FUNC3(&port_user_lock);

	FUNC1((unsigned long)u->ring);

	for (i = 0; i < NR_EVENT_CHANNELS; i++) {
		if (port_user[i] != u)
			continue;

		FUNC0(port_user[i], i);
	}

	FUNC4(&port_user_lock);

	FUNC2(u->name);
	FUNC2(u);

	return 0;
}