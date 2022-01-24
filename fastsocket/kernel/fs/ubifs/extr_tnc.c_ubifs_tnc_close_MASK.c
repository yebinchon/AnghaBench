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
struct TYPE_2__ {scalar_t__ znode; } ;
struct ubifs_info {int /*<<< orphan*/  ilebs; int /*<<< orphan*/  gap_lebs; TYPE_1__ zroot; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*) ; 
 int /*<<< orphan*/  ubifs_clean_zn_cnt ; 
 long FUNC4 (scalar_t__) ; 

void FUNC5(struct ubifs_info *c)
{
	long clean_freed;

	FUNC3(c);
	if (c->zroot.znode) {
		clean_freed = FUNC4(c->zroot.znode);
		FUNC0(clean_freed, &ubifs_clean_zn_cnt);
	}
	FUNC2(c->gap_lebs);
	FUNC2(c->ilebs);
	FUNC1(c);
}