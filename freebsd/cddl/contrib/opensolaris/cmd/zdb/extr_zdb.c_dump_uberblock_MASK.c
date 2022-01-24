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
struct TYPE_3__ {scalar_t__ ub_checkpoint_txg; int /*<<< orphan*/  ub_rootbp; scalar_t__ ub_timestamp; scalar_t__ ub_guid_sum; scalar_t__ ub_txg; scalar_t__ ub_version; scalar_t__ ub_magic; } ;
typedef  TYPE_1__ uberblock_t ;
typedef  char const* u_longlong_t ;
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  blkbuf ;

/* Variables and functions */
 int BP_SPRINTF_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int* dump_opt ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(uberblock_t *ub, const char *header, const char *footer)
{
	time_t timestamp = ub->ub_timestamp;

	(void) FUNC2("%s", header ? header : "");
	(void) FUNC2("\tmagic = %016llx\n", (u_longlong_t)ub->ub_magic);
	(void) FUNC2("\tversion = %llu\n", (u_longlong_t)ub->ub_version);
	(void) FUNC2("\ttxg = %llu\n", (u_longlong_t)ub->ub_txg);
	(void) FUNC2("\tguid_sum = %llu\n", (u_longlong_t)ub->ub_guid_sum);
	(void) FUNC2("\ttimestamp = %llu UTC = %s",
	    (u_longlong_t)ub->ub_timestamp, FUNC0(FUNC1(&timestamp)));
	if (dump_opt['u'] >= 3) {
		char blkbuf[BP_SPRINTF_LEN];
		FUNC3(blkbuf, sizeof (blkbuf), &ub->ub_rootbp);
		(void) FUNC2("\trootbp = %s\n", blkbuf);
	}
	(void) FUNC2("\tcheckpoint_txg = %llu\n",
	    (u_longlong_t)ub->ub_checkpoint_txg);
	(void) FUNC2("%s", footer ? footer : "");
}