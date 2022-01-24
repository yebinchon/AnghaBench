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
typedef  int /*<<< orphan*/  ctf_type_t ;
typedef  scalar_t__ ctf_id_t ;
struct TYPE_5__ {int ctf_flags; scalar_t__ ctf_typemax; struct TYPE_5__* ctf_parent; } ;
typedef  TYPE_1__ ctf_file_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  ECTF_BADID ; 
 int /*<<< orphan*/  ECTF_NOPARENT ; 
 int LCTF_CHILD ; 
 int /*<<< orphan*/  const* FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

const ctf_type_t *
FUNC4(ctf_file_t **fpp, ctf_id_t type)
{
	ctf_file_t *fp = *fpp; /* caller passes in starting CTF container */

	if ((fp->ctf_flags & LCTF_CHILD) && FUNC0(type) &&
	    (fp = fp->ctf_parent) == NULL) {
		(void) FUNC3(*fpp, ECTF_NOPARENT);
		return (NULL);
	}

	type = FUNC1(type);
	if (type > 0 && type <= fp->ctf_typemax) {
		*fpp = fp; /* function returns ending CTF container */
		return (FUNC2(fp, type));
	}

	(void) FUNC3(fp, ECTF_BADID);
	return (NULL);
}