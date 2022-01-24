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
struct netlink_callback {int* args; } ;
typedef  int /*<<< orphan*/  ip_set_id_t ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 TYPE_1__** ip_set_list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct netlink_callback *cb)
{
	if (cb->args[2]) {
		FUNC1("release set %s\n", ip_set_list[cb->args[1]]->name);
		FUNC0((ip_set_id_t) cb->args[1]);
	}
	return 0;
}