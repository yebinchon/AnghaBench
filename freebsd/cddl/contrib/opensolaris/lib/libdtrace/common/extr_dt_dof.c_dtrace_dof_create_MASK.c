#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_53__   TYPE_8__ ;
typedef  struct TYPE_52__   TYPE_7__ ;
typedef  struct TYPE_51__   TYPE_6__ ;
typedef  struct TYPE_50__   TYPE_5__ ;
typedef  struct TYPE_49__   TYPE_4__ ;
typedef  struct TYPE_48__   TYPE_3__ ;
typedef  struct TYPE_47__   TYPE_2__ ;
typedef  struct TYPE_46__   TYPE_1__ ;
typedef  struct TYPE_45__   TYPE_14__ ;
typedef  struct TYPE_44__   TYPE_13__ ;
typedef  struct TYPE_43__   TYPE_12__ ;
typedef  struct TYPE_42__   TYPE_11__ ;

/* Type definitions */
typedef  int uint_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct utsname {int dummy; } ;
typedef  int /*<<< orphan*/  h ;
struct TYPE_47__ {char* dtsd_strdata; int /*<<< orphan*/ * dtsd_fmtdata; TYPE_7__ const* dtsd_action; TYPE_6__* dtsd_ecbdesc; } ;
typedef  TYPE_2__ dtrace_stmtdesc_t ;
struct TYPE_53__ {scalar_t__ dx_id; TYPE_2__* ds_desc; } ;
struct TYPE_48__ {scalar_t__ dp_xrefslen; TYPE_8__ const dp_stmts; int /*<<< orphan*/ ** dp_xrefs; int /*<<< orphan*/  dp_dofversion; } ;
typedef  TYPE_3__ dtrace_prog_t ;
struct TYPE_49__ {char* dtpd_provider; char* dtpd_mod; char* dtpd_func; char* dtpd_name; int /*<<< orphan*/  dtpd_id; } ;
typedef  TYPE_4__ dtrace_probedesc_t ;
struct TYPE_42__ {size_t ddo_strsec; int ddo_nsecs; int /*<<< orphan*/  ddo_udata; int /*<<< orphan*/  ddo_strs; int /*<<< orphan*/  ddo_ldata; int /*<<< orphan*/  ddo_secs; } ;
struct TYPE_50__ {int dt_dflags; int /*<<< orphan*/  dt_uts; TYPE_8__ const dt_provlist; TYPE_8__ const dt_xlators; TYPE_11__ dt_dof; } ;
typedef  TYPE_5__ dtrace_hdl_t ;
struct TYPE_46__ {int /*<<< orphan*/ * dtpdd_difo; } ;
struct TYPE_51__ {int /*<<< orphan*/  dted_uarg; TYPE_7__ const* dted_action; TYPE_1__ dted_pred; TYPE_4__ dted_probe; } ;
typedef  TYPE_6__ dtrace_ecbdesc_t ;
struct TYPE_52__ {int /*<<< orphan*/  dtad_uarg; int /*<<< orphan*/  dtad_ntuple; int /*<<< orphan*/  dtad_kind; scalar_t__ dtad_arg; int /*<<< orphan*/ * dtad_difo; struct TYPE_52__ const* dtad_next; } ;
typedef  TYPE_7__ const dtrace_actdesc_t ;
typedef  TYPE_8__ const dt_xlator_t ;
typedef  TYPE_8__ dt_stmt_t ;
typedef  TYPE_8__ const dt_provider_t ;
typedef  TYPE_11__ dt_dof_t ;
typedef  int /*<<< orphan*/  dt_buf_t ;
typedef  scalar_t__ dof_stridx_t ;
typedef  void* dof_secidx_t ;
struct TYPE_43__ {scalar_t__ dofs_type; size_t dofs_offset; size_t dofs_size; int dofs_flags; } ;
typedef  TYPE_12__ dof_sec_t ;
struct TYPE_44__ {size_t dofp_strtab; size_t dofa_strtab; int /*<<< orphan*/  dofe_uarg; scalar_t__ dofe_pad; void* dofe_actions; void* dofe_pred; void* dofe_probes; int /*<<< orphan*/  dofa_uarg; int /*<<< orphan*/  dofa_ntuple; int /*<<< orphan*/  dofa_kind; scalar_t__ dofa_arg; void* dofa_difo; int /*<<< orphan*/  dofp_id; void* dofp_name; void* dofp_func; void* dofp_mod; void* dofp_provider; } ;
typedef  TYPE_13__ dof_probedesc_t ;
struct TYPE_45__ {int dofh_secnum; size_t dofh_loadsz; size_t dofh_filesz; } ;
typedef  TYPE_14__ dof_hdr_t ;
typedef  TYPE_13__ dof_ecbdesc_t ;
typedef  TYPE_13__ dof_actdesc_t ;

/* Variables and functions */
 int DOF_SECF_LOAD ; 
 void* DOF_SECIDX_NONE ; 
 scalar_t__ DOF_SECT_ACTDESC ; 
 int /*<<< orphan*/  DOF_SECT_COMMENTS ; 
 scalar_t__ DOF_SECT_ECBDESC ; 
 scalar_t__ DOF_SECT_PROBEDESC ; 
 scalar_t__ DOF_SECT_STRTAB ; 
 int /*<<< orphan*/  DOF_SECT_UTSNAME ; 
 int /*<<< orphan*/  DOF_SECT_XLIMPORT ; 
 int DTRACE_D_MASK ; 
 int DTRACE_D_PROBES ; 
 int DTRACE_D_STRIP ; 
 int EINVAL ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/ * _dtrace_version ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (TYPE_11__*,int /*<<< orphan*/ *) ; 
 void* FUNC4 (TYPE_11__*,TYPE_13__*,scalar_t__,int,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC5 (TYPE_11__*,TYPE_8__ const*) ; 
 void* FUNC6 (TYPE_11__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_11__*,TYPE_8__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_11__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_14__*) ; 
 void* FUNC10 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 size_t FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_12__* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_14__*,int,int) ; 
 scalar_t__ FUNC17 (TYPE_5__*,TYPE_3__*) ; 
 TYPE_8__* FUNC18 (TYPE_8__ const*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*,int) ; 
 int FUNC20 (TYPE_5__*,int /*<<< orphan*/ *,char*,int) ; 
 size_t FUNC21 (size_t,int) ; 
 int FUNC22 (int /*<<< orphan*/ *) ; 

void *
FUNC23(dtrace_hdl_t *dtp, dtrace_prog_t *pgp, uint_t flags)
{
	dt_dof_t *ddo = &dtp->dt_dof;

	const dtrace_ecbdesc_t *edp, *last;
	const dtrace_probedesc_t *pdp;
	const dtrace_actdesc_t *ap;
	const dt_stmt_t *stp;

	uint_t maxacts = 0;
	uint_t maxfmt = 0;

	dt_provider_t *pvp;
	dt_xlator_t *dxp;
	dof_actdesc_t *dofa;
	dof_sec_t *sp;
	size_t ssize, lsize;
	dof_hdr_t h;

	dt_buf_t dof;
	char *fmt;
	uint_t i;

	if (flags & ~DTRACE_D_MASK) {
		(void) FUNC19(dtp, EINVAL);
		return (NULL);
	}

	flags |= dtp->dt_dflags;

	if (FUNC9(dtp, pgp->dp_dofversion, &h) != 0)
		return (NULL);

	if (FUNC17(dtp, pgp) != 0)
		return (NULL);

	/*
	 * Iterate through the statement list computing the maximum number of
	 * actions and the maximum format string for allocating local buffers.
	 */
	for (last = NULL, stp = FUNC18(&pgp->dp_stmts);
	    stp != NULL; stp = FUNC18(stp), last = edp) {

		dtrace_stmtdesc_t *sdp = stp->ds_desc;
		dtrace_actdesc_t *ap = sdp->dtsd_action;

		if (sdp->dtsd_fmtdata != NULL) {
			i = FUNC20(dtp,
			    sdp->dtsd_fmtdata, NULL, 0);
			maxfmt = FUNC0(maxfmt, i);
		}

		if ((edp = sdp->dtsd_ecbdesc) == last)
			continue; /* same ecb as previous statement */

		for (i = 0, ap = edp->dted_action; ap; ap = ap->dtad_next)
			i++;

		maxacts = FUNC0(maxacts, i);
	}

	dofa = FUNC1(sizeof (dof_actdesc_t) * maxacts);
	fmt = FUNC1(maxfmt + 1);

	ddo->ddo_strsec = FUNC4(ddo, NULL, DOF_SECT_STRTAB, 1, 0, 0, 0);
	(void) FUNC6(ddo, "");

	/*
	 * If there are references to dynamic translators in the program, add
	 * an imported translator table entry for each referenced translator.
	 */
	if (pgp->dp_xrefslen != 0) {
		for (dxp = FUNC18(&dtp->dt_xlators);
		    dxp != NULL; dxp = FUNC18(dxp)) {
			if (dxp->dx_id < pgp->dp_xrefslen &&
			    pgp->dp_xrefs[dxp->dx_id] != NULL)
				FUNC7(ddo, dxp, DOF_SECT_XLIMPORT);
		}
	}

	/*
	 * Now iterate through the statement list, creating the DOF section
	 * headers and data for each one and adding them to our buffers.
	 */
	for (last = NULL, stp = FUNC18(&pgp->dp_stmts);
	    stp != NULL; stp = FUNC18(stp), last = edp) {

		dof_secidx_t probesec = DOF_SECIDX_NONE;
		dof_secidx_t prdsec = DOF_SECIDX_NONE;
		dof_secidx_t actsec = DOF_SECIDX_NONE;

		const dt_stmt_t *next = stp;
		dtrace_stmtdesc_t *sdp = stp->ds_desc;
		dof_stridx_t strndx = 0;
		dof_probedesc_t dofp;
		dof_ecbdesc_t dofe;
		uint_t i;

		if ((edp = stp->ds_desc->dtsd_ecbdesc) == last)
			continue; /* same ecb as previous statement */

		pdp = &edp->dted_probe;

		/*
		 * Add a DOF_SECT_PROBEDESC for the ECB's probe description,
		 * and copy the probe description strings into the string table.
		 */
		dofp.dofp_strtab = ddo->ddo_strsec;
		dofp.dofp_provider = FUNC6(ddo, pdp->dtpd_provider);
		dofp.dofp_mod = FUNC6(ddo, pdp->dtpd_mod);
		dofp.dofp_func = FUNC6(ddo, pdp->dtpd_func);
		dofp.dofp_name = FUNC6(ddo, pdp->dtpd_name);
		dofp.dofp_id = pdp->dtpd_id;

		probesec = FUNC4(ddo, &dofp, DOF_SECT_PROBEDESC,
		    sizeof (dof_secidx_t), 0,
		    sizeof (dof_probedesc_t), sizeof (dof_probedesc_t));

		/*
		 * If there is a predicate DIFO associated with the ecbdesc,
		 * write out the DIFO sections and save the DIFO section index.
		 */
		if (edp->dted_pred.dtpdd_difo != NULL)
			prdsec = FUNC3(ddo, edp->dted_pred.dtpdd_difo);

		/*
		 * Now iterate through the action list generating DIFOs as
		 * referenced therein and adding action descriptions to 'dofa'.
		 */
		for (i = 0, ap = edp->dted_action;
		    ap != NULL; ap = ap->dtad_next, i++) {

			if (ap->dtad_difo != NULL) {
				dofa[i].dofa_difo =
				    FUNC3(ddo, ap->dtad_difo);
			} else
				dofa[i].dofa_difo = DOF_SECIDX_NONE;

			/*
			 * If the first action in a statement has string data,
			 * add the string to the global string table.  This can
			 * be due either to a printf() format string
			 * (dtsd_fmtdata) or a print() type string
			 * (dtsd_strdata).
			 */
			if (sdp != NULL && ap == sdp->dtsd_action) {
				if (sdp->dtsd_fmtdata != NULL) {
					(void) FUNC20(dtp,
					    sdp->dtsd_fmtdata, fmt, maxfmt + 1);
					strndx = FUNC6(ddo, fmt);
				} else if (sdp->dtsd_strdata != NULL) {
					strndx = FUNC6(ddo,
					    sdp->dtsd_strdata);
				} else {
					strndx = 0; /* use dtad_arg instead */
				}

				if ((next = FUNC18(next)) != NULL)
					sdp = next->ds_desc;
				else
					sdp = NULL;
			}

			if (strndx != 0) {
				dofa[i].dofa_arg = strndx;
				dofa[i].dofa_strtab = ddo->ddo_strsec;
			} else {
				dofa[i].dofa_arg = ap->dtad_arg;
				dofa[i].dofa_strtab = DOF_SECIDX_NONE;
			}

			dofa[i].dofa_kind = ap->dtad_kind;
			dofa[i].dofa_ntuple = ap->dtad_ntuple;
			dofa[i].dofa_uarg = ap->dtad_uarg;
		}

		if (i > 0) {
			actsec = FUNC4(ddo, dofa, DOF_SECT_ACTDESC,
			    sizeof (uint64_t), 0, sizeof (dof_actdesc_t),
			    sizeof (dof_actdesc_t) * i);
		}

		/*
		 * Now finally, add the DOF_SECT_ECBDESC referencing all the
		 * previously created sub-sections.
		 */
		dofe.dofe_probes = probesec;
		dofe.dofe_pred = prdsec;
		dofe.dofe_actions = actsec;
		dofe.dofe_pad = 0;
		dofe.dofe_uarg = edp->dted_uarg;

		(void) FUNC4(ddo, &dofe, DOF_SECT_ECBDESC,
		    sizeof (uint64_t), 0, 0, sizeof (dof_ecbdesc_t));
	}

	/*
	 * If any providers are user-defined, output DOF sections corresponding
	 * to the providers and the probes and arguments that they define.
	 */
	if (flags & DTRACE_D_PROBES) {
		for (pvp = FUNC18(&dtp->dt_provlist);
		    pvp != NULL; pvp = FUNC18(pvp)) {
			if (FUNC5(ddo, pvp) != 0)
				return (NULL);
		}
	}

	/*
	 * If we're not stripping unloadable sections, generate compiler
	 * comments and any other unloadable miscellany.
	 */
	if (!(flags & DTRACE_D_STRIP)) {
		(void) FUNC8(ddo, _dtrace_version, DOF_SECT_COMMENTS,
		    sizeof (char), 0, 0, FUNC22(_dtrace_version) + 1);
		(void) FUNC8(ddo, &dtp->dt_uts, DOF_SECT_UTSNAME,
		    sizeof (char), 0, 0, sizeof (struct utsname));
	}

	/*
	 * Compute and fill in the appropriate values for the dof_hdr_t's
	 * dofh_secnum, dofh_loadsz, and dofh_filez values.
	 */
	h.dofh_secnum = ddo->ddo_nsecs;
	ssize = sizeof (h) + FUNC14(&ddo->ddo_secs);

	h.dofh_loadsz = ssize +
	    FUNC14(&ddo->ddo_ldata) +
	    FUNC14(&ddo->ddo_strs);

	if (FUNC14(&ddo->ddo_udata) != 0) {
		lsize = FUNC21(h.dofh_loadsz, sizeof (uint64_t));
		h.dofh_filesz = lsize + FUNC14(&ddo->ddo_udata);
	} else {
		lsize = h.dofh_loadsz;
		h.dofh_filesz = lsize;
	}

	/*
	 * Set the global DOF_SECT_STRTAB's offset to be after the header,
	 * section headers, and other loadable data.  Since we're going to
	 * iterate over the buffer data directly, we must check for errors.
	 */
	if ((i = FUNC13(&ddo->ddo_secs)) != 0) {
		(void) FUNC19(dtp, i);
		return (NULL);
	}

	sp = FUNC15(&ddo->ddo_secs);
	FUNC2(sp[ddo->ddo_strsec].dofs_type == DOF_SECT_STRTAB);
	FUNC2(ssize == sizeof (h) + sizeof (dof_sec_t) * ddo->ddo_nsecs);

	sp[ddo->ddo_strsec].dofs_offset = ssize + FUNC14(&ddo->ddo_ldata);
	sp[ddo->ddo_strsec].dofs_size = FUNC14(&ddo->ddo_strs);

	/*
	 * Now relocate all the other section headers by adding the appropriate
	 * delta to their respective dofs_offset values.
	 */
	for (i = 0; i < ddo->ddo_nsecs; i++, sp++) {
		if (i == ddo->ddo_strsec)
			continue; /* already relocated above */

		if (sp->dofs_flags & DOF_SECF_LOAD)
			sp->dofs_offset += ssize;
		else
			sp->dofs_offset += lsize;
	}

	/*
	 * Finally, assemble the complete in-memory DOF buffer by writing the
	 * header and then concatenating all our buffers.  dt_buf_concat() will
	 * propagate any errors and cause dt_buf_claim() to return NULL.
	 */
	FUNC12(dtp, &dof, "dof", h.dofh_filesz);

	FUNC16(dtp, &dof, &h, sizeof (h), sizeof (uint64_t));
	FUNC11(dtp, &dof, &ddo->ddo_secs, sizeof (uint64_t));
	FUNC11(dtp, &dof, &ddo->ddo_ldata, sizeof (uint64_t));
	FUNC11(dtp, &dof, &ddo->ddo_strs, sizeof (char));
	FUNC11(dtp, &dof, &ddo->ddo_udata, sizeof (uint64_t));

	return (FUNC10(dtp, &dof));
}