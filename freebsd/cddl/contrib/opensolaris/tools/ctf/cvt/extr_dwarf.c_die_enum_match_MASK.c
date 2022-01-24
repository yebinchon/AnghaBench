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
struct TYPE_2__ {int /*<<< orphan*/ * t_emem; } ;
typedef  TYPE_1__ tdesc_t ;

/* Variables and functions */

__attribute__((used)) static int
FUNC0(void *arg1, void *arg2)
{
	tdesc_t *tdp = arg1, **fullp = arg2;

	if (tdp->t_emem != NULL) {
		*fullp = tdp;
		return (-1); /* stop the iteration */
	}

	return (0);
}