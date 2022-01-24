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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  subobj ;
struct TYPE_7__ {scalar_t__ bpo_object; int /*<<< orphan*/  bpo_os; TYPE_1__* bpo_phys; scalar_t__ bpo_havesubobj; } ;
typedef  TYPE_2__ bpobj_t ;
struct TYPE_6__ {scalar_t__ bpo_subobjs; int bpo_num_subobjs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(bpobj_t *bpo)
{
	FUNC4(bpo->bpo_object);

	if (bpo->bpo_havesubobj && bpo->bpo_phys->bpo_subobjs != 0) {
		FUNC4(bpo->bpo_phys->bpo_subobjs);
		for (uint64_t i = 0; i < bpo->bpo_phys->bpo_num_subobjs; i++) {
			uint64_t subobj;
			bpobj_t subbpo;
			int error;
			FUNC0(FUNC3(bpo->bpo_os,
			    bpo->bpo_phys->bpo_subobjs,
			    i * sizeof (subobj), sizeof (subobj), &subobj, 0));
			error = FUNC2(&subbpo, bpo->bpo_os, subobj);
			if (error != 0) {
				(void) FUNC5("ERROR %u while trying to open "
				    "subobj id %llu\n",
				    error, (u_longlong_t)subobj);
				continue;
			}
			FUNC6(&subbpo);
			FUNC1(&subbpo);
		}
	}
}