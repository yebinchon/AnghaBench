#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int t_id; scalar_t__ t_type; struct TYPE_8__* t_tdesc; void* t_name; } ;
typedef  TYPE_1__ tdesc_t ;
typedef  int iitype_t ;
struct TYPE_9__ {int ii_type; TYPE_1__* ii_dtype; int /*<<< orphan*/  ii_name; } ;
typedef  TYPE_2__ iidesc_t ;

/* Variables and functions */
 scalar_t__ FORWARD ; 
 int II_TYPE ; 
 scalar_t__ INTRINSIC ; 
 scalar_t__ TYPEDEF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  faketypenumber ; 
 char* FUNC2 (char*,int*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,TYPE_1__**) ; 
 TYPE_1__* FUNC7 (int) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static iitype_t
FUNC9(char *cp, iidesc_t *ii)
{
	tdesc_t *tdp, *ntdp;
	int tid;

	if (*cp++ != 't')
		FUNC1("parse_type", "t (type)", cp - 1);

	cp = FUNC2(cp, &tid);
	if ((tdp = FUNC3(tid)) == NULL) {
		if (*cp++ != '=')
			FUNC1("parse_type", "= (definition)", cp - 1);

		(void) FUNC6(cp, tid, &tdp);

		if (tdp->t_id == tid) {
			FUNC0(tdp->t_type != TYPEDEF);
			FUNC0(!FUNC3(tdp->t_id));

			if (!FUNC4(tdp->t_name, ii->ii_name)) {
				ntdp = FUNC7(sizeof (*ntdp));
				ntdp->t_name = FUNC8(ii->ii_name);
				ntdp->t_type = TYPEDEF;
				ntdp->t_tdesc = tdp;
				tdp->t_id = faketypenumber++;
				tdp = ntdp;
			}
		} else if (tdp->t_id == 0) {
			FUNC0(tdp->t_type == FORWARD ||
			    tdp->t_type == INTRINSIC);

			if (tdp->t_name && !FUNC4(tdp->t_name, ii->ii_name)) {
				ntdp = FUNC7(sizeof (*ntdp));
				ntdp->t_name = FUNC8(ii->ii_name);
				ntdp->t_type = TYPEDEF;
				ntdp->t_tdesc = tdp;
				tdp->t_id = faketypenumber++;
				tdp = ntdp;
			}
		} else if (tdp->t_id != tid) {
			ntdp = FUNC7(sizeof (*ntdp));
			ntdp->t_name = FUNC8(ii->ii_name);
			ntdp->t_type = TYPEDEF;
			ntdp->t_tdesc = tdp;
			tdp = ntdp;
		}

		if (FUNC5(ii->ii_name, tid, tdp) < 0)
			return (-1);
	}

	ii->ii_type = II_TYPE;
	ii->ii_dtype = tdp;
	return (II_TYPE);
}