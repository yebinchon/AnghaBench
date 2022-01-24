#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ctf_id_t ;
struct TYPE_16__ {int ctf_flags; } ;
typedef  TYPE_3__ ctf_file_t ;
struct TYPE_18__ {int /*<<< orphan*/  ctr_index; int /*<<< orphan*/  ctr_contents; } ;
struct TYPE_15__ {TYPE_5__ dtu_arr; } ;
struct TYPE_14__ {int /*<<< orphan*/  ctt_info; } ;
struct TYPE_17__ {TYPE_2__ dtd_u; TYPE_1__ dtd_data; } ;
typedef  TYPE_4__ ctf_dtdef_t ;
typedef  TYPE_5__ ctf_arinfo_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CTF_K_ARRAY ; 
 int /*<<< orphan*/  ECTF_BADID ; 
 int /*<<< orphan*/  ECTF_RDONLY ; 
 int LCTF_DIRTY ; 
 int LCTF_RDWR ; 
 TYPE_4__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 

int
FUNC6(ctf_file_t *fp, ctf_id_t type, const ctf_arinfo_t *arp)
{
	ctf_file_t *fpd;
	ctf_dtdef_t *dtd = FUNC1(fp, type);

	if (!(fp->ctf_flags & LCTF_RDWR))
		return (FUNC5(fp, ECTF_RDONLY));

	if (dtd == NULL || FUNC0(dtd->dtd_data.ctt_info) != CTF_K_ARRAY)
		return (FUNC5(fp, ECTF_BADID));

	fpd = fp;
	if (FUNC2(&fpd, arp->ctr_contents) == NULL &&
	    FUNC1(fp, arp->ctr_contents) == NULL)
		return (FUNC5(fp, ECTF_BADID));

	fpd = fp;
	if (FUNC2(&fpd, arp->ctr_index) == NULL &&
	    FUNC1(fp, arp->ctr_index) == NULL)
		return (FUNC5(fp, ECTF_BADID));

	FUNC3(fp, dtd->dtd_u.dtu_arr.ctr_contents);
	FUNC3(fp, dtd->dtd_u.dtu_arr.ctr_index);
	fp->ctf_flags |= LCTF_DIRTY;
	dtd->dtd_u.dtu_arr = *arp;
	FUNC4(fp, arp->ctr_contents);
	FUNC4(fp, arp->ctr_index);

	return (0);
}