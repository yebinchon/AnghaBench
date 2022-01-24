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
typedef  void* ushort_t ;
typedef  scalar_t__ uint_t ;
typedef  int /*<<< orphan*/  uchar_t ;
typedef  int /*<<< orphan*/  ctm ;
struct TYPE_10__ {void* ctm_offset; void* ctm_type; scalar_t__ ctm_name; } ;
typedef  TYPE_2__ ctf_member_t ;
struct TYPE_12__ {scalar_t__ dmd_offset; scalar_t__ dmd_type; scalar_t__ dmd_name; } ;
struct TYPE_9__ {TYPE_4__ dtu_members; } ;
struct TYPE_11__ {TYPE_1__ dtd_u; } ;
typedef  TYPE_3__ ctf_dtdef_t ;
typedef  TYPE_4__ ctf_dmdef_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 TYPE_4__* FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static uchar_t *
FUNC3(ctf_dtdef_t *dtd, uint_t soff, uchar_t *t)
{
	ctf_dmdef_t *dmd = FUNC1(&dtd->dtd_u.dtu_members);
	ctf_member_t ctm;

	for (; dmd != NULL; dmd = FUNC1(dmd)) {
		if (dmd->dmd_name) {
			ctm.ctm_name = soff;
			soff += FUNC2(dmd->dmd_name) + 1;
		} else
			ctm.ctm_name = 0;

		ctm.ctm_type = (ushort_t)dmd->dmd_type;
		ctm.ctm_offset = (ushort_t)dmd->dmd_offset;

		FUNC0(&ctm, t, sizeof (ctm));
		t += sizeof (ctm);
	}

	return (t);
}