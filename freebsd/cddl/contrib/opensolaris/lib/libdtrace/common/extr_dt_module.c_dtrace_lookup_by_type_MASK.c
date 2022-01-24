#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint_t ;
struct TYPE_17__ {scalar_t__ dtt_type; int /*<<< orphan*/ * dtt_ctfp; int /*<<< orphan*/  dtt_object; } ;
typedef  TYPE_1__ dtrace_typeinfo_t ;
struct TYPE_19__ {size_t dm_flags; scalar_t__ dm_pid; size_t dm_nctflibs; int /*<<< orphan*/  dm_name; int /*<<< orphan*/ ** dm_libctfp; int /*<<< orphan*/ * dm_ctfp; } ;
struct TYPE_18__ {size_t dt_nmods; TYPE_3__ dt_modlist; } ;
typedef  TYPE_2__ dtrace_hdl_t ;
typedef  TYPE_3__ dt_module_t ;
typedef  scalar_t__ ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;

/* Variables and functions */
 scalar_t__ CTF_ERR ; 
 scalar_t__ CTF_K_FORWARD ; 
 char const* DTRACE_OBJ_EVERY ; 
 char const* DTRACE_OBJ_KMODS ; 
 char const* DTRACE_OBJ_UMODS ; 
 size_t DT_DM_KERNEL ; 
 int /*<<< orphan*/  EDT_NOMEM ; 
 int /*<<< orphan*/  EDT_NOTYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_3__* FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,TYPE_3__*,char*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC7 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (char const*,char) ; 
 char* FUNC11 (char const*) ; 

int
FUNC12(dtrace_hdl_t *dtp, const char *object, const char *name,
    dtrace_typeinfo_t *tip)
{
	dtrace_typeinfo_t ti;
	dt_module_t *dmp;
	int found = 0;
	ctf_id_t id;
	uint_t n, i;
	int justone;
	ctf_file_t *fp;
	char *buf, *p, *q;

	uint_t mask = 0; /* mask of dt_module flags to match */
	uint_t bits = 0; /* flag bits that must be present */

	if (object != DTRACE_OBJ_EVERY &&
	    object != DTRACE_OBJ_KMODS &&
	    object != DTRACE_OBJ_UMODS) {
		if ((dmp = FUNC4(dtp, object)) == NULL)
			return (-1); /* dt_errno is set for us */

		if (FUNC7(dtp, dmp) == -1)
			return (-1); /* dt_errno is set for us */
		n = 1;
		justone = 1;
	} else {
		if (object == DTRACE_OBJ_KMODS)
			mask = bits = DT_DM_KERNEL;
		else if (object == DTRACE_OBJ_UMODS)
			mask = DT_DM_KERNEL;

		dmp = FUNC3(&dtp->dt_modlist);
		n = dtp->dt_nmods;
		justone = 0;
	}

	if (tip == NULL)
		tip = &ti;

	for (; n > 0; n--, dmp = FUNC3(dmp)) {
		if ((dmp->dm_flags & mask) != bits)
			continue; /* failed to match required attributes */

		/*
		 * If we can't load the CTF container, continue on to the next
		 * module.  If our search was scoped to only one module then
		 * return immediately leaving dt_errno unmodified.
		 */
		if (FUNC6(dtp, dmp) == 0) {
			if (justone)
				return (-1);
			continue;
		}

		/*
		 * Look up the type in the module's CTF container.  If our
		 * match is a forward declaration tag, save this choice in
		 * 'tip' and keep going in the hope that we will locate the
		 * underlying structure definition.  Otherwise just return.
		 */
		if (dmp->dm_pid == 0) {
			id = FUNC0(dmp->dm_ctfp, name);
			fp = dmp->dm_ctfp;
		} else {
			if ((p = FUNC10(name, '`')) != NULL) {
				buf = FUNC11(name);
				if (buf == NULL)
					return (FUNC8(dtp, EDT_NOMEM));
				p = FUNC10(buf, '`');
				if ((q = FUNC10(p + 1, '`')) != NULL)
					p = q;
				*p = '\0';
				fp = FUNC5(dtp, dmp, buf);
				if (fp == NULL || (id = FUNC0(fp,
				    p + 1)) == CTF_ERR)
					id = CTF_ERR;
				FUNC9(buf);
			} else {
				for (i = 0; i < dmp->dm_nctflibs; i++) {
					fp = dmp->dm_libctfp[i];
					id = FUNC0(fp, name);
					if (id != CTF_ERR)
						break;
				}
			}
		}
		if (id != CTF_ERR) {
			tip->dtt_object = dmp->dm_name;
			tip->dtt_ctfp = fp;
			tip->dtt_type = id;
			if (FUNC1(fp, FUNC2(fp, id)) !=
			    CTF_K_FORWARD)
				return (0);

			found++;
		}
	}

	if (found == 0)
		return (FUNC8(dtp, EDT_NOTYPE));

	return (0);
}