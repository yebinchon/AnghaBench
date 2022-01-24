#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_7__ ;
typedef  struct TYPE_36__   TYPE_6__ ;
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
struct TYPE_32__ {scalar_t__ dtt_type; int dtt_flags; int /*<<< orphan*/ * dtt_ctfp; int /*<<< orphan*/ * dtt_object; } ;
typedef  TYPE_2__ dtrace_typeinfo_t ;
struct TYPE_33__ {char* dtpd_provider; int /*<<< orphan*/  dtpd_id; } ;
typedef  TYPE_3__ dtrace_probedesc_t ;
struct TYPE_34__ {int /*<<< orphan*/  dt_gen; } ;
typedef  TYPE_4__ dtrace_hdl_t ;
struct TYPE_35__ {int dtargd_ndx; size_t dtargd_mapping; char* dtargd_native; char* dtargd_xlate; int /*<<< orphan*/  dtargd_id; } ;
typedef  TYPE_5__ dtrace_argdesc_t ;
struct TYPE_31__ {char* dtvd_name; } ;
struct TYPE_36__ {TYPE_1__ pv_desc; TYPE_4__* pv_hdl; } ;
typedef  TYPE_6__ dt_provider_t ;
struct TYPE_37__ {size_t* pr_mapping; TYPE_2__* pr_argv; int /*<<< orphan*/ * pr_xargv; int /*<<< orphan*/ * pr_nargv; } ;
typedef  TYPE_7__ dt_probe_t ;
typedef  int /*<<< orphan*/  dt_node_t ;
typedef  int /*<<< orphan*/  dt_ident_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ CTF_ERR ; 
 int /*<<< orphan*/  DTRACEIOC_PROBEARG ; 
 int DTRACE_ARGNONE ; 
 int /*<<< orphan*/  DTRACE_IDNONE ; 
 int DTT_FL_USER ; 
 int /*<<< orphan*/  DT_IDENT_PROBE ; 
 int /*<<< orphan*/  DT_IDFLG_ORPHAN ; 
 int /*<<< orphan*/  EDT_NOMEM ; 
 int FUNC0 (int,size_t) ; 
 int _dtrace_argmax ; 
 int /*<<< orphan*/  _dtrace_defattr ; 
 TYPE_5__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*,...) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dt_idops_probe ; 
 scalar_t__ FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,TYPE_3__ const*,TYPE_5__*,int*) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_6__*,int) ; 
 TYPE_7__* FUNC12 (TYPE_4__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,TYPE_7__*) ; 
 char* FUNC14 (TYPE_3__ const*,TYPE_5__*) ; 
 int FUNC15 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 scalar_t__ FUNC19 (TYPE_4__*,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC20 (char*,char*) ; 
 scalar_t__ FUNC21 (char*,char*,int) ; 

__attribute__((used)) static dt_probe_t *
FUNC22(dt_provider_t *pvp, const dtrace_probedesc_t *pdp)
{
	dtrace_hdl_t *dtp = pvp->pv_hdl;
	char *name = FUNC14(pdp, FUNC1(FUNC15(pdp)));

	dt_node_t *xargs, *nargs;
	dt_ident_t *idp;
	dt_probe_t *prp;

	dtrace_typeinfo_t dtt;
	int i, nc, xc;

	int adc = _dtrace_argmax;
	dtrace_argdesc_t *adv = FUNC1(sizeof (dtrace_argdesc_t) * adc);
	dtrace_argdesc_t *adp = adv;

	FUNC2(FUNC20(pvp->pv_desc.dtvd_name, pdp->dtpd_provider) == 0);
	FUNC2(pdp->dtpd_id != DTRACE_IDNONE);

	FUNC4("discovering probe %s:%s id=%d\n",
	    pvp->pv_desc.dtvd_name, name, pdp->dtpd_id);

	for (nc = -1, i = 0; i < adc; i++, adp++) {
		FUNC3(adp, sizeof (dtrace_argdesc_t));
		adp->dtargd_ndx = i;
		adp->dtargd_id = pdp->dtpd_id;

		if (FUNC7(dtp, DTRACEIOC_PROBEARG, adp) != 0) {
			(void) FUNC16(dtp, errno);
			return (NULL);
		}

		if (adp->dtargd_ndx == DTRACE_ARGNONE)
			break; /* all argument descs have been retrieved */

		nc = FUNC0(nc, adp->dtargd_mapping);
	}

	xc = i;
	nc++;

	/*
	 * The pid provider believes in giving the kernel a break. No reason to
	 * give the kernel all the ctf containers that we're keeping ourselves
	 * just to get it back from it. So if we're coming from a pid provider
	 * probe and the kernel gave us no argument information we'll get some
	 * here. If for some crazy reason the kernel knows about our userland
	 * types then we just ignore this.
	 */
	if (xc == 0 && nc == 0 &&
	    FUNC21(pvp->pv_desc.dtvd_name, "pid", 3) == 0) {
		nc = adc;
		FUNC10(dtp, pdp, adv, &nc);
		xc = nc;
	}

	/*
	 * Now that we have discovered the number of native and translated
	 * arguments from the argument descriptions, allocate a new probe ident
	 * and corresponding dt_probe_t and hash it into the provider.
	 */
	xargs = FUNC11(pvp, xc);
	nargs = FUNC11(pvp, nc);

	if ((xc != 0 && xargs == NULL) || (nc != 0 && nargs == NULL))
		return (NULL); /* dt_errno is set for us */

	idp = FUNC5(name, DT_IDENT_PROBE,
	    DT_IDFLG_ORPHAN, pdp->dtpd_id, _dtrace_defattr, 0,
	    &dt_idops_probe, NULL, dtp->dt_gen);

	if (idp == NULL) {
		(void) FUNC16(dtp, EDT_NOMEM);
		return (NULL);
	}

	if ((prp = FUNC12(dtp, idp, 2,
	    nargs, nc, xargs, xc)) == NULL) {
		FUNC6(idp);
		return (NULL);
	}

	FUNC13(pvp, prp);

	/*
	 * Once our new dt_probe_t is fully constructed, iterate over the
	 * cached argument descriptions and assign types to prp->pr_nargv[]
	 * and prp->pr_xargv[] and assign mappings to prp->pr_mapping[].
	 */
	for (adp = adv, i = 0; i < xc; i++, adp++) {
		if (FUNC19(dtp,
		    adp->dtargd_native, &dtt) != 0) {
			FUNC4("failed to resolve input type %s "
			    "for %s:%s arg #%d: %s\n", adp->dtargd_native,
			    pvp->pv_desc.dtvd_name, name, i + 1,
			    FUNC17(dtp, FUNC18(dtp)));

			dtt.dtt_object = NULL;
			dtt.dtt_ctfp = NULL;
			dtt.dtt_type = CTF_ERR;
		} else {
			FUNC8(prp->pr_nargv[adp->dtargd_mapping],
			    dtt.dtt_ctfp, dtt.dtt_type,
			    dtt.dtt_flags & DTT_FL_USER ? B_TRUE : B_FALSE);
		}

		if (dtt.dtt_type != CTF_ERR && (adp->dtargd_xlate[0] == '\0' ||
		    FUNC20(adp->dtargd_native, adp->dtargd_xlate) == 0)) {
			FUNC9(prp->pr_nargv[
			    adp->dtargd_mapping], prp->pr_xargv[i]);
		} else if (FUNC19(dtp,
		    adp->dtargd_xlate, &dtt) != 0) {
			FUNC4("failed to resolve output type %s "
			    "for %s:%s arg #%d: %s\n", adp->dtargd_xlate,
			    pvp->pv_desc.dtvd_name, name, i + 1,
			    FUNC17(dtp, FUNC18(dtp)));

			dtt.dtt_object = NULL;
			dtt.dtt_ctfp = NULL;
			dtt.dtt_type = CTF_ERR;
		} else {
			FUNC8(prp->pr_xargv[i],
			    dtt.dtt_ctfp, dtt.dtt_type, B_FALSE);
		}

		prp->pr_mapping[i] = adp->dtargd_mapping;
		prp->pr_argv[i] = dtt;
	}

	return (prp);
}