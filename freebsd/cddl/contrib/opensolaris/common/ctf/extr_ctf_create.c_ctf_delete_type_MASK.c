#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ctf_id_t ;
struct TYPE_10__ {int ctf_flags; int ctf_refcnt; } ;
typedef  TYPE_1__ ctf_file_t ;
struct TYPE_11__ {scalar_t__ dtd_ref; } ;
typedef  TYPE_2__ ctf_dtdef_t ;

/* Variables and functions */
 int CTF_ERR ; 
 int /*<<< orphan*/  ECTF_NOTDYN ; 
 int /*<<< orphan*/  ECTF_RDONLY ; 
 int /*<<< orphan*/  ECTF_REFERENCED ; 
 int LCTF_DIRTY ; 
 int LCTF_RDWR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC4(ctf_file_t *fp, ctf_id_t type)
{
	ctf_file_t *fpd;
	ctf_dtdef_t *dtd = FUNC1(fp, type);

	if (!(fp->ctf_flags & LCTF_RDWR))
		return (FUNC3(fp, ECTF_RDONLY));

	/*
	 * We want to give as useful an errno as possible. That means that we
	 * want to distinguish between a type which does not exist and one for
	 * which the type is not dynamic.
	 */
	fpd = fp;
	if (FUNC2(&fpd, type) == NULL &&
	    FUNC1(fp, type) == NULL)
		return (CTF_ERR); /* errno is set for us */

	if (dtd == NULL)
		return (FUNC3(fp, ECTF_NOTDYN));

	if (dtd->dtd_ref != 0 || fp->ctf_refcnt > 1)
		return (FUNC3(fp, ECTF_REFERENCED));

	FUNC0(fp, dtd);
	fp->ctf_flags |= LCTF_DIRTY;
	return (0);
}