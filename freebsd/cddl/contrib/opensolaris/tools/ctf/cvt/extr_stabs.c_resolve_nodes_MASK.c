#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  td_curvgen; int /*<<< orphan*/  td_iihash; } ;
typedef  TYPE_1__ tdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  resolve_cbs ; 

__attribute__((used)) static void
FUNC2(tdata_t *td)
{
	FUNC0(2, "Resolving unresolved stabs\n");

	(void) FUNC1(td->td_iihash, &td->td_curvgen, resolve_cbs,
	    NULL, NULL, td);
}