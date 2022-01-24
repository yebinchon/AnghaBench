#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ushort_t ;
typedef  scalar_t__ uint_t ;
typedef  int /*<<< orphan*/  uchar_t ;
typedef  int /*<<< orphan*/  ctlm ;
struct TYPE_10__ {int /*<<< orphan*/  ctlm_offsetlo; int /*<<< orphan*/  ctlm_offsethi; scalar_t__ ctlm_pad; scalar_t__ ctlm_type; scalar_t__ ctlm_name; } ;
typedef  TYPE_2__ ctf_lmember_t ;
struct TYPE_12__ {int /*<<< orphan*/  dmd_offset; scalar_t__ dmd_type; scalar_t__ dmd_name; } ;
struct TYPE_9__ {TYPE_4__ dtu_members; } ;
struct TYPE_11__ {TYPE_1__ dtd_u; } ;
typedef  TYPE_3__ ctf_dtdef_t ;
typedef  TYPE_4__ ctf_dmdef_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 TYPE_4__* FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static uchar_t *
FUNC5(ctf_dtdef_t *dtd, uint_t soff, uchar_t *t)
{
	ctf_dmdef_t *dmd = FUNC3(&dtd->dtd_u.dtu_members);
	ctf_lmember_t ctlm;

	for (; dmd != NULL; dmd = FUNC3(dmd)) {
		if (dmd->dmd_name) {
			ctlm.ctlm_name = soff;
			soff += FUNC4(dmd->dmd_name) + 1;
		} else
			ctlm.ctlm_name = 0;

		ctlm.ctlm_type = (ushort_t)dmd->dmd_type;
		ctlm.ctlm_pad = 0;
		ctlm.ctlm_offsethi = FUNC0(dmd->dmd_offset);
		ctlm.ctlm_offsetlo = FUNC1(dmd->dmd_offset);

		FUNC2(&ctlm, t, sizeof (ctlm));
		t += sizeof (ctlm);
	}

	return (t);
}