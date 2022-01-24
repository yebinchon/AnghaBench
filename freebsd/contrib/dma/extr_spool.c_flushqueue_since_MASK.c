#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timeval {scalar_t__ tv_sec; } ;
struct TYPE_3__ {scalar_t__ tv_sec; } ;
struct stat {TYPE_1__ st_mtim; } ;
struct TYPE_4__ {int /*<<< orphan*/  spooldir; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPOOL_FLUSHFILE ; 
 scalar_t__ FUNC0 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ config ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct timeval*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,struct stat*) ; 

int
FUNC4(unsigned int period)
{
        struct stat st;
	struct timeval now;
        char *flushfn = NULL;

	if (FUNC0(&flushfn, "%d/%d", config.spooldir, SPOOL_FLUSHFILE) < 0)
		return (0);
	if (FUNC3(flushfn, &st) < 0) {
		FUNC1(flushfn);
		return (0);
	}
	FUNC1(flushfn);
	flushfn = NULL;
	if (FUNC2(&now, 0) != 0)
		return (0);

	/* Did the flush file get touched within the last period seconds? */
	if (st.st_mtim.tv_sec + (int)period >= now.tv_sec)
		return (1);
	else
		return (0);
}