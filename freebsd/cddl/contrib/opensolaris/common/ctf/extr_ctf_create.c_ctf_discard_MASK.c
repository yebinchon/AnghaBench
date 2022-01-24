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
struct TYPE_10__ {int /*<<< orphan*/  dtd_type; } ;
struct TYPE_9__ {int ctf_flags; scalar_t__ ctf_dtoldid; scalar_t__ ctf_dtnextid; TYPE_2__ ctf_dtdefs; } ;
typedef  TYPE_1__ ctf_file_t ;
typedef  TYPE_2__ ctf_dtdef_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECTF_RDONLY ; 
 int LCTF_DIRTY ; 
 int LCTF_RDWR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC4(ctf_file_t *fp)
{
	ctf_dtdef_t *dtd, *ntd;

	if (!(fp->ctf_flags & LCTF_RDWR))
		return (FUNC3(fp, ECTF_RDONLY));

	if (!(fp->ctf_flags & LCTF_DIRTY))
		return (0); /* no update required */

	for (dtd = FUNC2(&fp->ctf_dtdefs); dtd != NULL; dtd = ntd) {
		ntd = FUNC2(dtd);
		if (FUNC0(dtd->dtd_type) <= fp->ctf_dtoldid)
			continue; /* skip types that have been committed */

		FUNC1(fp, dtd);
	}

	fp->ctf_dtnextid = fp->ctf_dtoldid + 1;
	fp->ctf_flags &= ~LCTF_DIRTY;

	return (0);
}