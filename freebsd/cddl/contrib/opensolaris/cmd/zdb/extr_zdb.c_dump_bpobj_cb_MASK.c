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
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_4__ {scalar_t__ blk_birth; } ;
typedef  TYPE_1__ blkptr_t ;
typedef  int /*<<< orphan*/  blkbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BP_SPRINTF_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,TYPE_1__ const*) ; 

__attribute__((used)) static int
FUNC3(void *arg, const blkptr_t *bp, dmu_tx_t *tx)
{
	char blkbuf[BP_SPRINTF_LEN];

	FUNC0(bp->blk_birth != 0);
	FUNC2(blkbuf, sizeof (blkbuf), bp);
	(void) FUNC1("\t%s\n", blkbuf);
	return (0);
}