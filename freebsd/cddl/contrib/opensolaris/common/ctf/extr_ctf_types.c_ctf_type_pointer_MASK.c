#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ctf_id_t ;
struct TYPE_6__ {int ctf_flags; int /*<<< orphan*/ * ctf_ptrtab; } ;
typedef  TYPE_1__ ctf_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTF_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECTF_NOTYPE ; 
 int LCTF_CHILD ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

ctf_id_t
FUNC5(ctf_file_t *fp, ctf_id_t type)
{
	ctf_file_t *ofp = fp;
	ctf_id_t ntype;

	if (FUNC2(&fp, type) == NULL)
		return (CTF_ERR); /* errno is set for us */

	if ((ntype = fp->ctf_ptrtab[FUNC1(type)]) != 0)
		return (FUNC0(ntype, (fp->ctf_flags & LCTF_CHILD)));

	if ((type = FUNC4(fp, type)) == CTF_ERR)
		return (FUNC3(ofp, ECTF_NOTYPE));

	if (FUNC2(&fp, type) == NULL)
		return (FUNC3(ofp, ECTF_NOTYPE));

	if ((ntype = fp->ctf_ptrtab[FUNC1(type)]) != 0)
		return (FUNC0(ntype, (fp->ctf_flags & LCTF_CHILD)));

	return (FUNC3(ofp, ECTF_NOTYPE));
}