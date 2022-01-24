#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * ps_pe; int /*<<< orphan*/  ps_b; } ;
typedef  TYPE_1__ PE_Scn ;
typedef  int /*<<< orphan*/  PE ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  errno ; 

PE_Scn *
FUNC2(PE *pe)
{
	PE_Scn *ps;

	if ((ps = FUNC1(1, sizeof(PE_Scn))) == NULL) {
		errno = ENOMEM;
		return (NULL);
	}
	FUNC0(&ps->ps_b);
	ps->ps_pe = pe;

	return (ps);
}