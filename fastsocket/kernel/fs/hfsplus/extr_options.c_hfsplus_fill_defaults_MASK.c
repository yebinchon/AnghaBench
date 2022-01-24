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
struct hfsplus_sb_info {int part; int session; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  umask; void* type; void* creator; } ;

/* Variables and functions */
 void* HFSPLUS_DEF_CR_TYPE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct hfsplus_sb_info *opts)
{
	if (!opts)
		return;

	opts->creator = HFSPLUS_DEF_CR_TYPE;
	opts->type = HFSPLUS_DEF_CR_TYPE;
	opts->umask = FUNC2();
	opts->uid = FUNC1();
	opts->gid = FUNC0();
	opts->part = -1;
	opts->session = -1;
}