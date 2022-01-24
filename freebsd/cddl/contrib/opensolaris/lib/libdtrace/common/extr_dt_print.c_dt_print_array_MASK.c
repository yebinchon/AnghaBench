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
typedef  int ulong_t ;
typedef  int ssize_t ;
struct TYPE_8__ {scalar_t__ pa_depth; scalar_t__ pa_addr; int /*<<< orphan*/  pa_nest; int /*<<< orphan*/ * pa_ctfp; int /*<<< orphan*/ * pa_file; } ;
typedef  TYPE_1__ dt_printarg_t ;
typedef  int ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;
typedef  int /*<<< orphan*/  ctf_encoding_t ;
struct TYPE_9__ {int ctr_nelems; int /*<<< orphan*/  ctr_contents; } ;
typedef  TYPE_2__ ctf_arinfo_t ;
typedef  scalar_t__ caddr_t ;
typedef  scalar_t__ boolean_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int CTF_ERR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int CTF_K_INTEGER ; 
 int NBBY ; 
 int FUNC2 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  dt_print_member ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char) ; 

__attribute__((used)) static void
FUNC12(ctf_id_t base, ulong_t off, dt_printarg_t *pap)
{
	FILE *fp = pap->pa_file;
	ctf_file_t *ctfp = pap->pa_ctfp;
	caddr_t addr = pap->pa_addr + off / NBBY;
	ctf_arinfo_t car;
	ssize_t eltsize;
	ctf_encoding_t e;
	int i;
	boolean_t isstring;
	int kind;
	ctf_id_t rtype;

	if (FUNC2(ctfp, base, &car) == CTF_ERR) {
		(void) FUNC10(fp, "%p", (void *)addr);
		return;
	}

	if ((eltsize = FUNC6(ctfp, car.ctr_contents)) < 0 ||
	    (rtype = FUNC5(ctfp, car.ctr_contents)) == CTF_ERR ||
	    (kind = FUNC4(ctfp, rtype)) == CTF_ERR) {
		(void) FUNC10(fp, "<invalid type %lu>", car.ctr_contents);
		return;
	}

	/* see if this looks like a string */
	isstring = B_FALSE;
	if (kind == CTF_K_INTEGER &&
	    FUNC3(ctfp, rtype, &e) != CTF_ERR && FUNC0(e)) {
		char c;
		for (i = 0; i < car.ctr_nelems; i++) {
			c = *((char *)addr + eltsize * i);
			if (!FUNC11(c) || c == '\0')
				break;
		}

		if (i != car.ctr_nelems && c == '\0')
			isstring = B_TRUE;
	}

	/*
	 * As a slight aesthetic optimization, if we are a top-level type, then
	 * don't bother printing out the brackets.  This lets print("foo") look
	 * like:
	 *
	 * 	string "foo"
	 *
	 * As D will internally represent this as a char[256] array.
	 */
	if (!isstring || pap->pa_depth != 0)
		(void) FUNC10(fp, "[ ");

	if (isstring)
		(void) FUNC10(fp, "\"");

	for (i = 0; i < car.ctr_nelems; i++) {
		if (isstring) {
			char c = *((char *)addr + eltsize * i);
			if (c == '\0')
				break;
			(void) FUNC10(fp, "%c", c);
		} else {
			/*
			 * Recursively invoke ctf_type_visit() on each member.
			 * We setup a new printarg struct with 'pa_nest' set to
			 * indicate that we are within a nested array.
			 */
			dt_printarg_t pa = *pap;
			pa.pa_nest += pap->pa_depth + 1;
			pa.pa_depth = 0;
			pa.pa_addr = addr + eltsize * i;
			(void) FUNC7(ctfp, car.ctr_contents,
			    dt_print_member, &pa);

			FUNC9(&pa, 0);
			if (i != car.ctr_nelems - 1)
				(void) FUNC10(fp, ", ");
			else if (FUNC1(kind))
				(void) FUNC10(fp, "\n");
		}
	}

	if (isstring)
		(void) FUNC10(fp, "\"");

	if (!isstring || pap->pa_depth != 0) {
		if (FUNC1(kind))
			FUNC8(pap);
		else
			(void) FUNC10(fp, " ");
		(void) FUNC10(fp, "]");
	}
}