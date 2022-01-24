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
struct TYPE_3__ {int wip_nmerged; int /*<<< orphan*/ * wip_td; } ;
typedef  TYPE_1__ wip_t ;
typedef  int /*<<< orphan*/  tdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(wip_t *slot, tdata_t *pow)
{
	if (slot->wip_td == NULL) {
		slot->wip_td = pow;
		slot->wip_nmerged = 1;
	} else {
		FUNC0(2, "%d: merging %p into %p\n", FUNC2(),
		    (void *)pow, (void *)slot->wip_td);

		FUNC1(pow, slot->wip_td, NULL, 0);
		FUNC3(pow);

		slot->wip_nmerged++;
	}
}