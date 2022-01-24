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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

size_t FUNC1(struct machine *machine, FILE *fp,
				     bool with_hits)
{
	return FUNC0(&machine->kernel_dsos, fp, with_hits) +
	       FUNC0(&machine->user_dsos, fp, with_hits);
}