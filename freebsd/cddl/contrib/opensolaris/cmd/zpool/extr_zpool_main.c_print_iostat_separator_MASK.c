#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cb_namewidth; } ;
typedef  TYPE_1__ iostat_cbdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void
FUNC1(iostat_cbdata_t *cb)
{
	int i = 0;

	for (i = 0; i < cb->cb_namewidth; i++)
		(void) FUNC0("-");
	(void) FUNC0("  -----  -----  -----  -----  -----  -----\n");
}