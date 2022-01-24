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
struct the_nilfs {int /*<<< orphan*/  ns_sufile; } ;
struct TYPE_2__ {int flags; } ;
struct nilfs_sc_info {int /*<<< orphan*/  sc_nfreesegs; int /*<<< orphan*/  sc_freesegs; TYPE_1__ sc_stage; } ;

/* Variables and functions */
 int NILFS_CF_SUFREED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nilfs_sc_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct nilfs_sc_info*,struct the_nilfs*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct nilfs_sc_info *sci,
					   struct the_nilfs *nilfs, int err)
{
	if (FUNC4(err)) {
		FUNC2(sci, nilfs);
		if (sci->sc_stage.flags & NILFS_CF_SUFREED) {
			int ret;

			ret = FUNC3(nilfs->ns_sufile,
							sci->sc_freesegs,
							sci->sc_nfreesegs,
							NULL);
			FUNC0(ret); /* do not happen */
		}
	}
	FUNC1(sci);
}