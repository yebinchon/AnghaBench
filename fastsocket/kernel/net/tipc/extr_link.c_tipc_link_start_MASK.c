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
struct link {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STARTING_EVT ; 
 int /*<<< orphan*/  FUNC0 (char*,struct link*) ; 
 int /*<<< orphan*/  FUNC1 (struct link*,int /*<<< orphan*/ ) ; 

void FUNC2(struct link *l_ptr)
{
	FUNC0("tipc_link_start %x\n", l_ptr);
	FUNC1(l_ptr, STARTING_EVT);
}