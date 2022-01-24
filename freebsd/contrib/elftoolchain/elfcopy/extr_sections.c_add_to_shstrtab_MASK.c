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
struct elfcopy {TYPE_1__* shstrtab; } ;
struct TYPE_2__ {int /*<<< orphan*/  strtab; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

void
FUNC2(struct elfcopy *ecp, const char *name)
{

	if (FUNC0(ecp->shstrtab->strtab, name) == 0)
		FUNC1(EXIT_FAILURE, "elftc_string_table_insert failed");
}