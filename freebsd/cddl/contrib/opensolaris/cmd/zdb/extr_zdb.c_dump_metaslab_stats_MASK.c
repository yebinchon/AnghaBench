#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  rt_histogram; } ;
typedef  TYPE_1__ range_tree_t ;
struct TYPE_7__ {int ms_size; int /*<<< orphan*/  ms_allocatable_by_size; TYPE_1__* ms_allocatable; } ;
typedef  TYPE_2__ metaslab_t ;
typedef  int /*<<< orphan*/  maxbuf ;
typedef  int /*<<< orphan*/  avl_tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NN_NUMBUF_SZ ; 
 int /*<<< orphan*/  RANGE_TREE_HISTOGRAM_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC7(metaslab_t *msp)
{
	char maxbuf[32];
	range_tree_t *rt = msp->ms_allocatable;
	avl_tree_t *t = &msp->ms_allocatable_by_size;
	int free_pct = FUNC5(rt) * 100 / msp->ms_size;

	/* max sure nicenum has enough space */
	FUNC0(sizeof (maxbuf) >= NN_NUMBUF_SZ);

	FUNC6(FUNC3(msp), maxbuf, sizeof (maxbuf));

	(void) FUNC4("\t %25s %10lu   %7s  %6s   %4s %4d%%\n",
	    "segments", FUNC1(t), "maxsize", maxbuf,
	    "freepct", free_pct);
	(void) FUNC4("\tIn-memory histogram:\n");
	FUNC2(rt->rt_histogram, RANGE_TREE_HISTOGRAM_SIZE, 0);
}