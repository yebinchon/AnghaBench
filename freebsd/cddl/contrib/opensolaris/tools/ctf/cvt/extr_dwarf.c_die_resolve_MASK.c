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
struct TYPE_6__ {int dw_nunres; TYPE_1__* dw_td; } ;
typedef  TYPE_2__ dwarf_t ;
struct TYPE_5__ {int /*<<< orphan*/  td_curvgen; int /*<<< orphan*/  td_iihash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,int) ; 
 int /*<<< orphan*/  die_fail_reporters ; 
 int /*<<< orphan*/  die_resolvers ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(dwarf_t *dw)
{
	int last = -1;
	int pass = 0;

	do {
		pass++;
		dw->dw_nunres = 0;

		(void) FUNC2(dw->dw_td->td_iihash,
		    &dw->dw_td->td_curvgen, NULL, NULL, die_resolvers, dw);

		FUNC0(3, "resolve: pass %d, %u left\n", pass, dw->dw_nunres);

		if ((int) dw->dw_nunres == last) {
			FUNC1(stderr, "%s: failed to resolve the following "
			    "types:\n", progname);

			(void) FUNC2(dw->dw_td->td_iihash,
			    &dw->dw_td->td_curvgen, NULL, NULL,
			    die_fail_reporters, dw);

			FUNC3("failed to resolve types\n");
		}

		last = dw->dw_nunres;

	} while (dw->dw_nunres != 0);
}