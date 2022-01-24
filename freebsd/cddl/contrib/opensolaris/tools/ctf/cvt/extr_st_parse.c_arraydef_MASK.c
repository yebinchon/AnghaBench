#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* t_ardef; } ;
typedef  TYPE_1__ tdesc_t ;
typedef  int /*<<< orphan*/  ardef_t ;
struct TYPE_5__ {int ad_nelems; int /*<<< orphan*/  ad_contents; int /*<<< orphan*/  ad_idxtype; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 char* FUNC1 (char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*,int,int,int) ; 
 char* FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int) ; 

__attribute__((used)) static char *
FUNC7(char *cp, tdesc_t **rtdp)
{
	int start, end, h;

	cp = FUNC1(cp, &h);
	if (*cp++ != ';')
		FUNC0("arraydef/1", ";", cp - 1);

	(*rtdp)->t_ardef = FUNC6(sizeof (ardef_t));
	(*rtdp)->t_ardef->ad_idxtype = FUNC2(h);

	cp = FUNC3(cp, &start); /* lower */
	if (*cp++ != ';')
		FUNC0("arraydef/2", ";", cp - 1);

	if (*cp == 'S') {
		/*
		 * variable length array - treat as null dimensioned
		 *
		 * For VLA variables on sparc, SS12 generated stab entry
		 * looks as follows:
		 * .stabs "buf:(0,28)=zr(0,4);0;S-12;(0,1)", 0x80, 0, 0, -16
		 * Whereas SS12u1 generated stab entry looks like this:
		 * .stabs "buf:(0,28)=zr(0,4);0;S0;(0,1)", 0x80, 0, 0, 0
		 * On x86, both versions generate the first type of entry.
		 * We should be able to parse both.
		 */
		cp++;
		if (*cp == '-')
			cp++;
		cp = FUNC3(cp, &end);
		end = start;
	} else {
		/*
		 * normal fixed-dimension array
		 * Stab entry for this looks as follows :
		 * .stabs "x:(0,28)=ar(0,4);0;9;(0,3)", 0x80, 0, 40, 0
		 */
		cp = FUNC3(cp, &end);  /* upper */
	}

	if (*cp++ != ';')
		FUNC0("arraydef/3", ";", cp - 1);
	(*rtdp)->t_ardef->ad_nelems = end - start + 1;
	cp = FUNC5(cp, h, &((*rtdp)->t_ardef->ad_contents));

	FUNC4(3, cp, "defined array idx type %d %d-%d next ",
	    h, start, end);

	return (cp);
}