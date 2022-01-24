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
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  dtrace_recdesc_t ;
typedef  int /*<<< orphan*/  dtrace_optval_t ;
struct TYPE_6__ {int /*<<< orphan*/ * dt_sprintf_buf; int /*<<< orphan*/  dt_sprintf_buflen; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EDT_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,void const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(dtrace_hdl_t *dtp, FILE *fp, void *fmtdata,
    const dtrace_recdesc_t *recp, uint_t nrecs, const void *buf, size_t len)
{
	dtrace_optval_t size;
	int rval;

	rval = FUNC4(dtp, "strsize", &size);
	FUNC0(rval == 0);
	FUNC0(dtp->dt_sprintf_buflen == 0);

	if (dtp->dt_sprintf_buf != NULL)
		FUNC5(dtp->dt_sprintf_buf);

	if ((dtp->dt_sprintf_buf = FUNC6(size)) == NULL)
		return (FUNC3(dtp, EDT_NOMEM));

	FUNC1(dtp->dt_sprintf_buf, size);
	dtp->dt_sprintf_buflen = size;
	rval = FUNC2(dtp, fp, fmtdata, recp, nrecs, buf, len,
	    NULL, 0);
	dtp->dt_sprintf_buflen = 0;

	if (rval == -1)
		FUNC5(dtp->dt_sprintf_buf);

	return (rval);
}