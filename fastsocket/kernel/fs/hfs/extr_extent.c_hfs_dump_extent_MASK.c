#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hfs_extent {int /*<<< orphan*/  count; int /*<<< orphan*/  block; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_EXTENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC2(struct hfs_extent *extent)
{
	int i;

	FUNC1(DBG_EXTENT, "   ");
	for (i = 0; i < 3; i++)
		FUNC1(DBG_EXTENT, " %u:%u", FUNC0(extent[i].block),
				 FUNC0(extent[i].count));
	FUNC1(DBG_EXTENT, "\n");
}