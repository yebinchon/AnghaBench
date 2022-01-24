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
struct dlm_comm {size_t addr_count; int /*<<< orphan*/ * addr; int /*<<< orphan*/  nodeid; } ;
struct config_item {int dummy; } ;
struct config_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct config_item*) ; 
 struct dlm_comm* FUNC1 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct dlm_comm* local_comm ; 

__attribute__((used)) static void FUNC4(struct config_group *g, struct config_item *i)
{
	struct dlm_comm *cm = FUNC1(i);
	if (local_comm == cm)
		local_comm = NULL;
	FUNC2(cm->nodeid);
	while (cm->addr_count--)
		FUNC3(cm->addr[cm->addr_count]);
	FUNC0(i);
}