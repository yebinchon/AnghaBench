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
struct machine {int /*<<< orphan*/  user_dsos; int /*<<< orphan*/  kernel_dsos; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC1(struct machine *machine, bool with_hits)
{
	bool ret = FUNC0(&machine->kernel_dsos, with_hits);
	ret |= FUNC0(&machine->user_dsos, with_hits);
	return ret;
}