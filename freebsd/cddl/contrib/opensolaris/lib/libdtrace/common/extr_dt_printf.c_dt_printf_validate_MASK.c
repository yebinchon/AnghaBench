#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vname ;
typedef  int uint_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  n ;
struct TYPE_19__ {int /*<<< orphan*/  dtt_type; int /*<<< orphan*/  dtt_ctfp; } ;
typedef  TYPE_1__ dtrace_typeinfo_t ;
typedef  scalar_t__ dtrace_actkind_t ;
struct TYPE_20__ {scalar_t__ (* pfc_check ) (TYPE_3__*,TYPE_4__*,TYPE_5__*) ;int /*<<< orphan*/  pfc_tstr; int /*<<< orphan*/  pfc_name; int /*<<< orphan*/  pfc_ofmt; int /*<<< orphan*/ * pfc_print; } ;
typedef  TYPE_2__ dt_pfconv_t ;
struct TYPE_21__ {char* pfv_format; int pfv_flags; int pfv_argc; TYPE_4__* pfv_argv; } ;
typedef  TYPE_3__ dt_pfargv_t ;
struct TYPE_22__ {int pfd_flags; int /*<<< orphan*/  pfd_fmt; TYPE_2__* pfd_conv; struct TYPE_22__* pfd_next; } ;
typedef  TYPE_4__ dt_pfargd_t ;
struct TYPE_23__ {struct TYPE_23__* dn_list; } ;
typedef  TYPE_5__ dt_node_t ;
struct TYPE_24__ {char* di_name; } ;
typedef  TYPE_6__ dt_ident_t ;
typedef  int /*<<< orphan*/  aggnode ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ DTRACEAGG_COUNT ; 
 int DT_PFCONV_AGG ; 
 int DT_PFCONV_DYNPREC ; 
 int DT_PFCONV_DYNWIDTH ; 
 int DT_PRINTF_AGGREGATION ; 
 int DT_PRINTF_EXACTLEN ; 
 int DT_TYPE_NAMELEN ; 
 int /*<<< orphan*/  D_PRINTF_AGG_CONV ; 
 int /*<<< orphan*/  D_PRINTF_ARG_EXTRA ; 
 int /*<<< orphan*/  D_PRINTF_ARG_PROTO ; 
 int /*<<< orphan*/  D_PRINTF_ARG_TYPE ; 
 int /*<<< orphan*/  D_PRINTF_DYN_PROTO ; 
 int /*<<< orphan*/  D_PRINTF_DYN_TYPE ; 
 int /*<<< orphan*/  D_PRINTF_FMT_EMPTY ; 
 int /*<<< orphan*/  D_TYPE_ERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int) ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,char*,int) ; 
 int FUNC4 (TYPE_5__*) ; 
 scalar_t__ FUNC5 (char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  pfprint_dint ; 
 int /*<<< orphan*/  pfprint_fp ; 
 int /*<<< orphan*/  pfprint_pct ; 
 int /*<<< orphan*/  pfprint_sint ; 
 int /*<<< orphan*/  pfprint_uint ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 scalar_t__ FUNC10 (TYPE_3__*,TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char const*,...) ; 

void
FUNC12(dt_pfargv_t *pfv, uint_t flags,
    dt_ident_t *idp, int foff, dtrace_actkind_t kind, dt_node_t *dnp)
{
	dt_pfargd_t *pfd = pfv->pfv_argv;
	const char *func = idp->di_name;

	char n[DT_TYPE_NAMELEN];
	dtrace_typeinfo_t dtt;
	const char *aggtype;
	dt_node_t aggnode;
	int i, j;

	if (pfv->pfv_format[0] == '\0') {
		FUNC11(D_PRINTF_FMT_EMPTY,
		    "%s( ) format string is empty\n", func);
	}

	pfv->pfv_flags = flags;

	/*
	 * We fake up a parse node representing the type that can be used with
	 * an aggregation result conversion, which -- for all but count() --
	 * is a signed quantity.
	 */
	if (kind != DTRACEAGG_COUNT)
		aggtype = "int64_t";
	else
		aggtype = "uint64_t";

	if (FUNC5(aggtype, &dtt) != 0)
		FUNC11(D_TYPE_ERR, "failed to lookup agg type %s\n", aggtype);

	FUNC0(&aggnode, sizeof (aggnode));
	FUNC2(&aggnode, dtt.dtt_ctfp, dtt.dtt_type, B_FALSE);

	for (i = 0, j = 0; i < pfv->pfv_argc; i++, pfd = pfd->pfd_next) {
		const dt_pfconv_t *pfc = pfd->pfd_conv;
		const char *dyns[2];
		int dync = 0;

		char vname[64];
		dt_node_t *vnp;

		if (pfc == NULL)
			continue; /* no checking if argd is just a prefix */

		if (pfc->pfc_print == &pfprint_pct) {
			(void) FUNC7(pfd->pfd_fmt, pfc->pfc_ofmt);
			continue;
		}

		if (pfd->pfd_flags & DT_PFCONV_DYNPREC)
			dyns[dync++] = ".*";
		if (pfd->pfd_flags & DT_PFCONV_DYNWIDTH)
			dyns[dync++] = "*";

		for (; dync != 0; dync--) {
			if (dnp == NULL) {
				FUNC11(D_PRINTF_DYN_PROTO,
				    "%s( ) prototype mismatch: conversion "
				    "#%d (%%%s) is missing a corresponding "
				    "\"%s\" argument\n", func, i + 1,
				    pfc->pfc_name, dyns[dync - 1]);
			}

			if (FUNC1(dnp) == 0) {
				FUNC11(D_PRINTF_DYN_TYPE,
				    "%s( ) argument #%d is incompatible "
				    "with conversion #%d prototype:\n"
				    "\tconversion: %% %s %s\n"
				    "\t prototype: int\n\t  argument: %s\n",
				    func, j + foff + 1, i + 1,
				    dyns[dync - 1], pfc->pfc_name,
				    FUNC3(dnp, n, sizeof (n)));
			}

			dnp = dnp->dn_list;
			j++;
		}

		/*
		 * If this conversion is consuming the aggregation data, set
		 * the value node pointer (vnp) to a fake node based on the
		 * aggregating function result type.  Otherwise assign vnp to
		 * the next parse node in the argument list, if there is one.
		 */
		if (pfd->pfd_flags & DT_PFCONV_AGG) {
			if (!(flags & DT_PRINTF_AGGREGATION)) {
				FUNC11(D_PRINTF_AGG_CONV,
				    "%%@ conversion requires an aggregation"
				    " and is not for use with %s( )\n", func);
			}
			(void) FUNC9(vname, "aggregating action",
			    sizeof (vname));
			vnp = &aggnode;
		} else if (dnp == NULL) {
			FUNC11(D_PRINTF_ARG_PROTO,
			    "%s( ) prototype mismatch: conversion #%d (%%"
			    "%s) is missing a corresponding value argument\n",
			    func, i + 1, pfc->pfc_name);
		} else {
			(void) FUNC6(vname, sizeof (vname),
			    "argument #%d", j + foff + 1);
			vnp = dnp;
			dnp = dnp->dn_list;
			j++;
		}

		/*
		 * Fill in the proposed final format string by prepending any
		 * size-related prefixes to the pfconv's format string.  The
		 * pfc_check() function below may optionally modify the format
		 * as part of validating the type of the input argument.
		 */
		if (pfc->pfc_print == &pfprint_sint ||
		    pfc->pfc_print == &pfprint_uint ||
		    pfc->pfc_print == &pfprint_dint) {
			if (FUNC4(vnp) == sizeof (uint64_t))
				(void) FUNC8(pfd->pfd_fmt, "ll");
		} else if (pfc->pfc_print == &pfprint_fp) {
			if (FUNC4(vnp) == sizeof (long double))
				(void) FUNC8(pfd->pfd_fmt, "L");
		}

		(void) FUNC7(pfd->pfd_fmt, pfc->pfc_ofmt);

		/*
		 * Validate the format conversion against the value node type.
		 * If the conversion is good, create the descriptor format
		 * string by concatenating together any required printf(3C)
		 * size prefixes with the conversion's native format string.
		 */
		if (pfc->pfc_check(pfv, pfd, vnp) == 0) {
			FUNC11(D_PRINTF_ARG_TYPE,
			    "%s( ) %s is incompatible with "
			    "conversion #%d prototype:\n\tconversion: %%%s\n"
			    "\t prototype: %s\n\t  argument: %s\n", func,
			    vname, i + 1, pfc->pfc_name, pfc->pfc_tstr,
			    FUNC3(vnp, n, sizeof (n)));
		}
	}

	if ((flags & DT_PRINTF_EXACTLEN) && dnp != NULL) {
		FUNC11(D_PRINTF_ARG_EXTRA,
		    "%s( ) prototype mismatch: only %d arguments "
		    "required by this format string\n", func, j);
	}
}