#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  dx_souid; int /*<<< orphan*/  dx_ptrid; } ;
typedef  TYPE_1__ dt_xlator_t ;
typedef  int /*<<< orphan*/  dt_ident_t ;
typedef  int /*<<< orphan*/  ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;

/* Variables and functions */
 scalar_t__ CTF_K_POINTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

dt_ident_t *
FUNC2(dt_xlator_t *dxp, ctf_file_t *ctfp, ctf_id_t type)
{
	if (FUNC0(ctfp, FUNC1(ctfp, type)) == CTF_K_POINTER)
		return (&dxp->dx_ptrid);
	else
		return (&dxp->dx_souid);
}