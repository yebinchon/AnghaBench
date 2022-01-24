#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int this10; } ;
struct TYPE_5__ {TYPE_2__ eq; } ;
typedef  TYPE_1__ vortex_t ;
typedef  int /*<<< orphan*/  u16 ;
typedef  TYPE_2__ eqlzr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(vortex_t * vortex, u16 * peaks, int *count)
{
	eqlzr_t *eq = &(vortex->eq);

	if (eq->this10 == 0)
		return 1;
	*count = eq->this10 * 2;
	FUNC0(vortex, peaks);
	return 0;
}