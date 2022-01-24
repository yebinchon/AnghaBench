#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_7__ {int /*<<< orphan*/ * pa_ctfp; int /*<<< orphan*/ * pa_file; scalar_t__ pa_depth; scalar_t__ pa_nest; int /*<<< orphan*/  pa_addr; int /*<<< orphan*/ * pa_dtp; } ;
typedef  TYPE_1__ dt_printarg_t ;
struct TYPE_8__ {scalar_t__ dm_pid; int dm_nctflibs; int /*<<< orphan*/ ** dm_libctfp; } ;
typedef  TYPE_2__ dt_module_t ;
typedef  void* ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ CTF_ERR ; 
 char* FUNC0 (int) ; 
 void* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  dt_print_member ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char const*,char) ; 

int
FUNC9(dtrace_hdl_t *dtp, FILE *fp, const char *typename,
    caddr_t addr, size_t len)
{
	const char *s;
	char *object;
	dt_printarg_t pa;
	ctf_id_t id;
	dt_module_t *dmp;
	ctf_file_t *ctfp;
	int libid;

	/*
	 * Split the fully-qualified type ID (module`id).  This should
	 * always be the format, but if for some reason we don't find the
	 * expected value, return 0 to fall back to the generic trace()
	 * behavior. In the case of userland CTF modules this will actually be
	 * of the format (module`lib`id). This is due to the fact that those
	 * modules have multiple CTF containers which `lib` identifies.
	 */
	for (s = typename; *s != '\0' && *s != '`'; s++)
		;

	if (*s != '`')
		return (0);

	object = FUNC0(s - typename + 1);
	FUNC2(typename, object, s - typename);
	object[s - typename] = '\0';
	dmp = FUNC6(dtp, object);
	if (dmp == NULL)
		return (0);

	if (dmp->dm_pid != 0) {
		libid = FUNC1(s + 1);
		s = FUNC8(s + 1, '`');
		if (s == NULL || libid > dmp->dm_nctflibs)
			return (0);
		ctfp = dmp->dm_libctfp[libid];
	} else {
		ctfp = FUNC5(dtp, dmp);
	}

	id = FUNC1(s + 1);

	/*
	 * Try to get the CTF kind for this id.  If something has gone horribly
	 * wrong and we can't resolve the ID, bail out and let trace() do the
	 * work.
	 */
	if (ctfp == NULL || FUNC3(ctfp, id) == CTF_ERR)
		return (0);

	/* setup the print structure and kick off the main print routine */
	pa.pa_dtp = dtp;
	pa.pa_addr = addr;
	pa.pa_ctfp = ctfp;
	pa.pa_nest = 0;
	pa.pa_depth = 0;
	pa.pa_file = fp;
	(void) FUNC4(pa.pa_ctfp, id, dt_print_member, &pa);

	FUNC7(&pa, 0);

	return (len);
}