#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_probedesc_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_6__ {int /*<<< orphan*/  pv_probes; int /*<<< orphan*/ * pv_hdl; } ;
typedef  TYPE_1__ dt_provider_t ;
typedef  int /*<<< orphan*/  dt_probe_t ;
struct TYPE_7__ {int /*<<< orphan*/ * di_data; } ;
typedef  TYPE_2__ dt_ident_t ;

/* Variables and functions */
 int /*<<< orphan*/  DTRACEIOC_PROBEMATCH ; 
 int /*<<< orphan*/  DTRACE_PROBESPEC_NAME ; 
 scalar_t__ EBADF ; 
 scalar_t__ EDT_NOPROBE ; 
 scalar_t__ ESRCH ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 

dt_probe_t *
FUNC8(dt_provider_t *pvp, const char *s)
{
	dtrace_hdl_t *dtp = pvp->pv_hdl;
	dtrace_probedesc_t pd;
	dt_ident_t *idp;
	size_t keylen;
	char *key;

	if (FUNC7(dtp, DTRACE_PROBESPEC_NAME, s, &pd) != 0)
		return (NULL); /* dt_errno is set for us */

	keylen = FUNC5(&pd);
	key = FUNC4(&pd, FUNC0(keylen));

	/*
	 * If the probe is already declared, then return the dt_probe_t from
	 * the existing identifier.  This could come from a static declaration
	 * or it could have been cached from an earlier call to this function.
	 */
	if ((idp = FUNC1(pvp->pv_probes, key)) != NULL)
		return (idp->di_data);

	/*
	 * If the probe isn't known, use the probe description computed above
	 * to ask dtrace(7D) to find the first matching probe.
	 */
	if (FUNC2(dtp, DTRACEIOC_PROBEMATCH, &pd) == 0)
		return (FUNC3(pvp, &pd));

	if (errno == ESRCH || errno == EBADF)
		(void) FUNC6(dtp, EDT_NOPROBE);
	else
		(void) FUNC6(dtp, errno);

	return (NULL);
}