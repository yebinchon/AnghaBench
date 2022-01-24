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
struct TYPE_2__ {int swab; int trunc; double bytes; int /*<<< orphan*/  out_part; int /*<<< orphan*/  out_full; int /*<<< orphan*/  in_part; int /*<<< orphan*/  in_full; } ;

/* Variables and functions */
 int C_NOINFO ; 
 int C_NOXFER ; 
 int C_PROGRESS ; 
 int ddflags ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ need_summary ; 
 double FUNC1 () ; 
 TYPE_1__ st ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC2(void)
{
	double secs;

	if (ddflags & C_NOINFO)
		return;

	if (ddflags & C_PROGRESS)
		FUNC0(stderr, "\n");

	secs = FUNC1();

	(void)FUNC0(stderr,
	    "%d+%d records in\n%d+%d records out\n",
	    st.in_full, st.in_part, st.out_full, st.out_part);
	if (st.swab)
		(void)FUNC0(stderr, "%d odd length swab %s\n",
		     st.swab, (st.swab == 1) ? "block" : "blocks");
	if (st.trunc)
		(void)FUNC0(stderr, "%d truncated %s\n",
		     st.trunc, (st.trunc == 1) ? "block" : "blocks");
	if (!(ddflags & C_NOXFER)) {
		(void)FUNC0(stderr,
		    "%f bytes transferred in %.6f secs (%.0f bytes/sec)\n",
		    st.bytes, secs, st.bytes / secs);
	}
	need_summary = 0;
}