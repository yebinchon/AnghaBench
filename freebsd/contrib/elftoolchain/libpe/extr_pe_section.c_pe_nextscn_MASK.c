#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  pe_scn; } ;
struct TYPE_9__ {int ps_ndx; } ;
typedef  TYPE_1__ PE_Scn ;
typedef  TYPE_2__ PE ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  ps_next ; 

PE_Scn *
FUNC2(PE *pe, PE_Scn *ps)
{

	if (pe == NULL) {
		errno = EINVAL;
		return (NULL);
	}

	if (ps == NULL)
		ps = FUNC0(&pe->pe_scn);
	else
		ps = FUNC1(ps, ps_next);

	while (ps != NULL) {
		if (ps->ps_ndx >= 1 && ps->ps_ndx <= 0xFFFFU)
			return (ps);
		ps = FUNC1(ps, ps_next);
	}

	return (NULL);
}