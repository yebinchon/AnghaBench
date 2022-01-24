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
struct TYPE_3__ {int dt_maxformat; int /*<<< orphan*/ ** dt_formats; } ;
typedef  TYPE_1__ dtrace_hdl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 

void
FUNC2(dtrace_hdl_t *dtp)
{
	int i;

	for (i = 0; i < dtp->dt_maxformat; i++) {
		if (dtp->dt_formats[i] != NULL)
			FUNC0(dtp->dt_formats[i]);
	}

	FUNC1(dtp->dt_formats);
	dtp->dt_formats = NULL;
}