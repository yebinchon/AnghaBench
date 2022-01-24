#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uchar_t ;
struct TYPE_9__ {int /*<<< orphan*/ * dmd_name; } ;
struct TYPE_7__ {TYPE_3__ dtu_members; } ;
struct TYPE_8__ {TYPE_1__ dtd_u; } ;
typedef  TYPE_2__ ctf_dtdef_t ;
typedef  TYPE_3__ ctf_dmdef_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 TYPE_3__* FUNC1 (TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uchar_t *
FUNC3(ctf_dtdef_t *dtd, uchar_t *s)
{
	ctf_dmdef_t *dmd = FUNC1(&dtd->dtd_u.dtu_members);
	size_t len;

	for (; dmd != NULL; dmd = FUNC1(dmd)) {
		if (dmd->dmd_name == NULL)
			continue; /* skip anonymous members */
		len = FUNC2(dmd->dmd_name) + 1;
		FUNC0(dmd->dmd_name, s, len);
		s += len;
	}

	return (s);
}