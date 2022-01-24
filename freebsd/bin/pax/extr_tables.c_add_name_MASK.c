#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct TYPE_5__ {struct TYPE_5__* oname; struct TYPE_5__* fow; struct TYPE_5__* nname; } ;
typedef  TYPE_1__ NAMT ;

/* Variables and functions */
 int /*<<< orphan*/  N_TAB_SZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_1__** ntab ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 size_t FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,TYPE_1__*) ; 
 void* FUNC5 (char*) ; 

int
FUNC6(char *oname, int onamelen, char *nname)
{
	NAMT *pt;
	u_int indx;

	if (ntab == NULL) {
		/*
		 * should never happen
		 */
		FUNC2(0, "No interactive rename table, links may fail\n");
		return(0);
	}

	/*
	 * look to see if we have already mapped this file, if so we
	 * will update it
	 */
	indx = FUNC3(oname, onamelen, N_TAB_SZ);
	if ((pt = ntab[indx]) != NULL) {
		/*
		 * look down the has chain for the file
		 */
		while ((pt != NULL) && (FUNC4(oname, pt->oname) != 0))
			pt = pt->fow;

		if (pt != NULL) {
			/*
			 * found an old mapping, replace it with the new one
			 * the user just input (if it is different)
			 */
			if (FUNC4(nname, pt->nname) == 0)
				return(0);

			FUNC0(pt->nname);
			if ((pt->nname = FUNC5(nname)) == NULL) {
				FUNC2(1, "Cannot update rename table");
				return(-1);
			}
			return(0);
		}
	}

	/*
	 * this is a new mapping, add it to the table
	 */
	if ((pt = (NAMT *)FUNC1(sizeof(NAMT))) != NULL) {
		if ((pt->oname = FUNC5(oname)) != NULL) {
			if ((pt->nname = FUNC5(nname)) != NULL) {
				pt->fow = ntab[indx];
				ntab[indx] = pt;
				return(0);
			}
			FUNC0(pt->oname);
		}
		FUNC0(pt);
	}
	FUNC2(1, "Interactive rename table out of memory");
	return(-1);
}