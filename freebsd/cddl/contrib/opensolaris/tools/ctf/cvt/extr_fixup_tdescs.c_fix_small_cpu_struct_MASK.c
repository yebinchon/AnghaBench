#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ t_type; scalar_t__ t_id; void* t_name; TYPE_3__* t_members; struct TYPE_9__* t_tdesc; } ;
typedef  TYPE_1__ tdesc_t ;
struct TYPE_10__ {int /*<<< orphan*/  td_nextid; } ;
typedef  TYPE_2__ tdata_t ;
struct TYPE_11__ {struct TYPE_11__* ml_next; TYPE_1__* ml_type; void* ml_name; scalar_t__ ml_size; scalar_t__ ml_offset; } ;
typedef  TYPE_3__ mlist_t ;

/* Variables and functions */
 scalar_t__ FORWARD ; 
 size_t NBBY ; 
 scalar_t__ STRUCT ; 
 scalar_t__ TYPEDEF ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC3 (void*,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,void*) ; 
 TYPE_1__* FUNC6 (int) ; 
 TYPE_3__* FUNC7 (int) ; 
 void* FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9(tdata_t *td, size_t ptrsize)
{
	tdesc_t *cput, *cpu;
	tdesc_t *machcpu;
	mlist_t *ml, *lml;
	mlist_t *cpum;
	int foundcpucyc = 0;

	/*
	 * We're going to take the circuitous route finding the cpu structure,
	 * because we want to make sure that we find the right one.  It would
	 * be nice if we could verify the header name too.  DWARF might not
	 * have the cpu_t, so we let this pass.
	 */
	if ((cput = FUNC2(td, "cpu_t")) != NULL) {
		if (cput->t_type != TYPEDEF)
			return;
		cpu = cput->t_tdesc;
	} else {
		cpu = FUNC2(td, "cpu");
	}

	if (cpu == NULL)
		return;

	if (!FUNC4(cpu->t_name, "cpu") || cpu->t_type != STRUCT)
		return;

	for (ml = cpu->t_members, lml = NULL; ml;
	    lml = ml, ml = ml->ml_next) {
		if (FUNC3(ml->ml_name, "cpu_cyclic") == 0)
			foundcpucyc = 1;
	}

	if (foundcpucyc == 0 || lml == NULL ||
	    FUNC3(lml->ml_name, "cpu_m") == 0)
		return;

	/*
	 * We need to derive the right offset for the fake cpu_m member.  To do
	 * that, we require a special unused member to be the last member
	 * before the 'cpu_m', that we encode knowledge of here.  ABI alignment
	 * on all platforms is such that we only need to add a pointer-size
	 * number of bits to get the right offset for cpu_m.  This would most
	 * likely break if gcc's -malign-double were ever used, but that option
	 * breaks the ABI anyway.
	 */
	if (!FUNC4(lml->ml_name, "cpu_m_pad") &&
	    FUNC1("CTFCONVERT_PERMISSIVE") == NULL) {
		FUNC5("last cpu_t member before cpu_m is %s; "
		    "it must be cpu_m_pad.\n", lml->ml_name);
	}

	if ((machcpu = FUNC2(td, "machcpu")) == NULL) {
		machcpu = FUNC6(sizeof (*machcpu));
		machcpu->t_name = FUNC8("machcpu");
		machcpu->t_id = td->td_nextid++;
		machcpu->t_type = FORWARD;
	} else if (machcpu->t_type != STRUCT) {
		return;
	}

	FUNC0(3, "Adding cpu_m machcpu %s to cpu struct\n",
	    (machcpu->t_type == FORWARD ? "forward" : "struct"));

	cpum = FUNC7(sizeof (*cpum));
	cpum->ml_offset = lml->ml_offset + (ptrsize * NBBY);
	cpum->ml_size = 0;
	cpum->ml_name = FUNC8("cpu_m");
	cpum->ml_type = machcpu;
	cpum->ml_next = NULL;

	lml->ml_next = cpum;
}