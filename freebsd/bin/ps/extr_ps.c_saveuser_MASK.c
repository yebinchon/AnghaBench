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
struct TYPE_7__ {int ki_valid; char* ki_args; int /*<<< orphan*/ * ki_env; TYPE_1__* ki_p; } ;
struct TYPE_6__ {int ki_flag; scalar_t__ ki_stat; char* ki_comm; char* ki_tdname; int /*<<< orphan*/ * ki_args; } ;
typedef  TYPE_2__ KINFO ;

/* Variables and functions */
 int /*<<< orphan*/  MAXCOMLEN ; 
 int P_INMEM ; 
 scalar_t__ SZOMB ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvm_getargv ; 
 int /*<<< orphan*/  kvm_getenvv ; 
 scalar_t__ needcomm ; 
 scalar_t__ needenv ; 
 void* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

__attribute__((used)) static void
FUNC5(KINFO *ki)
{
	char *argsp;

	if (ki->ki_p->ki_flag & P_INMEM) {
		/*
		 * The u-area might be swapped out, and we can't get
		 * at it because we have a crashdump and no swap.
		 * If it's here fill in these fields, otherwise, just
		 * leave them 0.
		 */
		ki->ki_valid = 1;
	} else
		ki->ki_valid = 0;
	/*
	 * save arguments if needed
	 */
	if (needcomm) {
		if (ki->ki_p->ki_stat == SZOMB)
			ki->ki_args = FUNC3("<defunct>");
		else if (FUNC0(ki) || (ki->ki_p->ki_args != NULL))
			ki->ki_args = FUNC2(kvm_getargv, ki,
			    ki->ki_p->ki_comm, ki->ki_p->ki_tdname, MAXCOMLEN);
		else {
			FUNC1(&argsp, "(%s)", ki->ki_p->ki_comm);
			ki->ki_args = argsp;
		}
		if (ki->ki_args == NULL)
			FUNC4(1, "malloc failed");
	} else {
		ki->ki_args = NULL;
	}
	if (needenv) {
		if (FUNC0(ki))
			ki->ki_env = FUNC2(kvm_getenvv, ki,
			    (char *)NULL, (char *)NULL, 0);
		else
			ki->ki_env = FUNC3("()");
		if (ki->ki_env == NULL)
			FUNC4(1, "malloc failed");
	} else {
		ki->ki_env = NULL;
	}
}