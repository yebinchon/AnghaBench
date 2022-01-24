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
struct TYPE_19__ {int /*<<< orphan*/ * dtt_object; int /*<<< orphan*/  dtt_type; int /*<<< orphan*/ * dtt_ctfp; scalar_t__ dtt_flags; } ;
typedef  TYPE_1__ dtrace_typeinfo_t ;
struct TYPE_20__ {int /*<<< orphan*/  dts_id; int /*<<< orphan*/  dts_name; int /*<<< orphan*/  dts_object; } ;
typedef  TYPE_2__ dtrace_syminfo_t ;
struct TYPE_21__ {int /*<<< orphan*/  dt_ctferr; } ;
typedef  TYPE_3__ dtrace_hdl_t ;
struct TYPE_22__ {int /*<<< orphan*/ * dm_name; int /*<<< orphan*/ * dm_ctfp; int /*<<< orphan*/ * dm_extern; } ;
typedef  TYPE_4__ dt_module_t ;
struct TYPE_23__ {int /*<<< orphan*/  di_type; int /*<<< orphan*/ * di_ctfp; } ;
typedef  TYPE_5__ dt_ident_t ;
struct TYPE_24__ {scalar_t__ st_shndx; int /*<<< orphan*/  st_info; } ;
typedef  TYPE_6__ GElf_Sym ;

/* Variables and functions */
 int /*<<< orphan*/  CTF_ERR ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  EDT_CTF ; 
 int /*<<< orphan*/  EDT_NOMOD ; 
 int /*<<< orphan*/  EDT_NOSYM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SHN_UNDEF ; 
 scalar_t__ STT_FUNC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_3__*,TYPE_4__*) ; 
 TYPE_4__* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 

int
FUNC9(dtrace_hdl_t *dtp, const GElf_Sym *symp,
    const dtrace_syminfo_t *sip, dtrace_typeinfo_t *tip)
{
	dt_module_t *dmp;

	tip->dtt_object = NULL;
	tip->dtt_ctfp = NULL;
	tip->dtt_type = CTF_ERR;
	tip->dtt_flags = 0;

	if ((dmp = FUNC7(dtp, sip->dts_object)) == NULL)
		return (FUNC8(dtp, EDT_NOMOD));

	if (symp->st_shndx == SHN_UNDEF && dmp->dm_extern != NULL) {
		dt_ident_t *idp =
		    FUNC5(dmp->dm_extern, sip->dts_name);

		if (idp == NULL)
			return (FUNC8(dtp, EDT_NOSYM));

		tip->dtt_ctfp = idp->di_ctfp;
		tip->dtt_type = idp->di_type;

	} else if (FUNC2(symp->st_info) != STT_FUNC) {
		if (FUNC6(dtp, dmp) == NULL)
			return (-1); /* errno is set for us */

		tip->dtt_ctfp = dmp->dm_ctfp;
		tip->dtt_type = FUNC4(dmp->dm_ctfp, sip->dts_id);

		if (tip->dtt_type == CTF_ERR) {
			dtp->dt_ctferr = FUNC3(tip->dtt_ctfp);
			return (FUNC8(dtp, EDT_CTF));
		}

	} else {
		tip->dtt_ctfp = FUNC0(dtp);
		tip->dtt_type = FUNC1(dtp);
	}

	tip->dtt_object = dmp->dm_name;
	return (0);
}