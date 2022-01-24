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
typedef  int /*<<< orphan*/  ddt_stat_t ;
struct TYPE_3__ {int /*<<< orphan*/  const* ddh_stat; } ;
typedef  TYPE_1__ ddt_histogram_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void
FUNC2(const ddt_stat_t *dds_total, const ddt_histogram_t *ddh)
{
	int h;

	(void) FUNC1("\n");

	(void) FUNC1("bucket   "
	    "           allocated             "
	    "          referenced          \n");
	(void) FUNC1("______   "
	    "______________________________   "
	    "______________________________\n");

	(void) FUNC1("%6s   %6s   %5s   %5s   %5s   %6s   %5s   %5s   %5s\n",
	    "refcnt",
	    "blocks", "LSIZE", "PSIZE", "DSIZE",
	    "blocks", "LSIZE", "PSIZE", "DSIZE");

	(void) FUNC1("%6s   %6s   %5s   %5s   %5s   %6s   %5s   %5s   %5s\n",
	    "------",
	    "------", "-----", "-----", "-----",
	    "------", "-----", "-----", "-----");

	for (h = 0; h < 64; h++)
		FUNC0(&ddh->ddh_stat[h], h);

	FUNC0(dds_total, -1);

	(void) FUNC1("\n");
}