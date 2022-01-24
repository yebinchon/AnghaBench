#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int t_id; struct TYPE_8__* t_tdesc; int /*<<< orphan*/  t_type; } ;
typedef  TYPE_1__ tdesc_t ;

/* Variables and functions */
 int /*<<< orphan*/  TYPEDEF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (char*,int*) ; 
 TYPE_1__* FUNC3 (int) ; 
 char* FUNC4 (char*,int,TYPE_1__**) ; 
 TYPE_1__* FUNC5 (int) ; 
 TYPE_1__* FUNC6 (int) ; 

__attribute__((used)) static char *
FUNC7(char *cp, tdesc_t **tdpp)
{
	tdesc_t *tdp;
	int tid;

	cp = FUNC2(cp, &tid);

	FUNC1(tid != 0);

	if (*cp == '=') {
		if (!(cp = FUNC4(cp + 1, tid, &tdp)))
			return (NULL);
		if (tdp->t_id && tdp->t_id != tid) {
			tdesc_t *ntdp = FUNC6(sizeof (*ntdp));

			ntdp->t_type = TYPEDEF;
			ntdp->t_tdesc = tdp;
			tdp = ntdp;
		}
		FUNC0(tdp, tid);
	} else if ((tdp = FUNC3(tid)) == NULL)
		tdp = FUNC5(tid);

	*tdpp = tdp;
	return (cp);
}