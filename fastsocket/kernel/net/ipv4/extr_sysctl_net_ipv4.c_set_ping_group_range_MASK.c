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
struct ctl_table {int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 TYPE_1__ sysctl_local_ports ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ctl_table *table, gid_t range[2])
{
	gid_t *data = table->data;
	FUNC0(&sysctl_local_ports.lock);
	data[0] = range[0];
	data[1] = range[1];
	FUNC1(&sysctl_local_ports.lock);
}