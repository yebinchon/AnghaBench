#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int uint_t ;
struct TYPE_18__ {int pi_noffs; int pi_maxoffs; int pi_nenoffs; int pi_maxenoffs; struct TYPE_18__* pi_offs; struct TYPE_18__* pi_enoffs; struct TYPE_18__* pi_fname; struct TYPE_18__* pi_next; struct TYPE_18__* pi_rname; } ;
typedef  TYPE_3__ uint32_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_16__ {int /*<<< orphan*/  dtvd_name; } ;
struct TYPE_19__ {TYPE_1__ pv_desc; int /*<<< orphan*/ * pv_hdl; } ;
typedef  TYPE_4__ dt_provider_t ;
struct TYPE_20__ {TYPE_2__* pr_ident; TYPE_3__* pr_inst; } ;
typedef  TYPE_5__ dt_probe_t ;
typedef  TYPE_3__ dt_probe_instance_t ;
struct TYPE_17__ {int /*<<< orphan*/  di_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDT_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*,int) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,TYPE_3__,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (TYPE_3__*,char const*) ; 
 void* FUNC8 (char const*) ; 

int
FUNC9(dt_provider_t *pvp, dt_probe_t *prp,
    const char *fname, const char *rname, uint32_t offset, int isenabled)
{
	dtrace_hdl_t *dtp = pvp->pv_hdl;
	dt_probe_instance_t *pip;
	uint32_t **offs;
	uint_t *noffs, *maxoffs;

	FUNC0(fname != NULL);

	for (pip = prp->pr_inst; pip != NULL; pip = pip->pi_next) {
		if (FUNC7(pip->pi_fname, fname) == 0 &&
		    FUNC7(pip->pi_rname, rname) == 0)
			break;
	}

	if (pip == NULL) {
		if ((pip = FUNC6(dtp, sizeof (*pip))) == NULL)
			return (-1);

		if ((pip->pi_offs = FUNC6(dtp, sizeof (uint32_t))) == NULL)
			goto nomem;

		if ((pip->pi_enoffs = FUNC6(dtp,
		    sizeof (uint32_t))) == NULL)
			goto nomem;

		if ((pip->pi_fname = FUNC8(fname)) == NULL)
			goto nomem;

		if ((pip->pi_rname = FUNC8(rname)) == NULL)
			goto nomem;

		pip->pi_noffs = 0;
		pip->pi_maxoffs = 1;
		pip->pi_nenoffs = 0;
		pip->pi_maxenoffs = 1;

		pip->pi_next = prp->pr_inst;

		prp->pr_inst = pip;
	}

	if (isenabled) {
		offs = &pip->pi_enoffs;
		noffs = &pip->pi_nenoffs;
		maxoffs = &pip->pi_maxenoffs;
	} else {
		offs = &pip->pi_offs;
		noffs = &pip->pi_noffs;
		maxoffs = &pip->pi_maxoffs;
	}

	if (*noffs == *maxoffs) {
		uint_t new_max = *maxoffs * 2;
		uint32_t *new_offs = FUNC2(dtp, sizeof (uint32_t) * new_max);

		if (new_offs == NULL)
			return (-1);

		FUNC1(*offs, new_offs, sizeof (uint32_t) * *maxoffs);

		FUNC4(dtp, *offs);
		*maxoffs = new_max;
		*offs = new_offs;
	}

	FUNC3("defined probe %s %s:%s %s() +0x%x (%s)\n",
	    isenabled ? "(is-enabled)" : "",
	    pvp->pv_desc.dtvd_name, prp->pr_ident->di_name, fname, offset,
	    rname);

	FUNC0(*noffs < *maxoffs);
	(*offs)[(*noffs)++] = offset;

	return (0);

nomem:
	FUNC4(dtp, pip->pi_fname);
	FUNC4(dtp, pip->pi_enoffs);
	FUNC4(dtp, pip->pi_offs);
	FUNC4(dtp, pip);
	return (FUNC5(dtp, EDT_NOMEM));
}