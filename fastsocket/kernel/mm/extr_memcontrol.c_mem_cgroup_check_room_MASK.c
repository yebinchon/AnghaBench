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
struct mem_cgroup {int /*<<< orphan*/  memsw; int /*<<< orphan*/  res; } ;

/* Variables and functions */
 int /*<<< orphan*/  do_swap_account ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC1(struct mem_cgroup *mem, unsigned long room)
{
	if (!FUNC0(&mem->res, room))
		return false;
	if (!do_swap_account)
		return true;
	return FUNC0(&mem->memsw, room);
}