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
struct TYPE_2__ {int /*<<< orphan*/  uu_timelow; int /*<<< orphan*/  uu_timemid; int /*<<< orphan*/  uu_clockseq; } ;
typedef  TYPE_1__ xfs_uu_t ;
typedef  int /*<<< orphan*/  uuid_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(uuid_t *uuid, int fsid [2])
{
	xfs_uu_t *uup = (xfs_uu_t *)uuid;

	fsid[0] = (FUNC0(uup->uu_clockseq) << 16) |
		   FUNC0(uup->uu_timemid);
	fsid[1] = FUNC1(uup->uu_timelow);
}