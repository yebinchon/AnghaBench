#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  pr_vaddr; } ;
typedef  TYPE_1__ prmap_t ;
struct TYPE_6__ {int dpa_count; TYPE_4__* dpa_dmp; int /*<<< orphan*/  dpa_proc; } ;
typedef  TYPE_2__ dt_module_cb_arg_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_7__ {int /*<<< orphan*/ ** dm_libctfn; int /*<<< orphan*/ ** dm_libctfp; } ;
typedef  scalar_t__ Lmid_t ;

/* Variables and functions */
 int MAXPATHLEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char*,scalar_t__,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 char* FUNC7 (char*,char) ; 

__attribute__((used)) static int
FUNC8(void *arg, const prmap_t *prmap, const char *obj)
{
	ctf_file_t *fp;
	char buf[MAXPATHLEN], *p;
	dt_module_cb_arg_t *dcp = arg;
	int count = dcp->dpa_count;
	Lmid_t lmid;

	fp = FUNC1(dcp->dpa_proc, obj);
	if (fp == NULL)
		return (0);
	fp = FUNC4(fp);
	if (fp == NULL)
		return (0);
	dcp->dpa_dmp->dm_libctfp[count] = fp;
	/*
	 * While it'd be nice to simply use objname here, because of our prior
	 * actions we'll always get a resolved object name to its on disk file.
	 * Like the pid provider, we need to tell a bit of a lie here. The type
	 * that the user thinks of is in terms of the libraries they requested,
	 * eg. libc.so.1, they don't care about the fact that it's
	 * libc_hwcap.so.1.
	 */
	(void) FUNC2(dcp->dpa_proc, prmap->pr_vaddr, buf, sizeof (buf));
	if ((p = FUNC7(buf, '/')) == NULL)
		p = buf;
	else
		p++;

	/*
	 * If for some reason we can't find a link map id for this module, which
	 * would be really quite weird. We instead just say the link map id is
	 * zero.
	 */
	if (FUNC0(dcp->dpa_proc, prmap->pr_vaddr, &lmid) != 0)
		lmid = 0;

	if (lmid == 0)
		dcp->dpa_dmp->dm_libctfn[count] = FUNC6(p);
	else
		(void) FUNC3(&dcp->dpa_dmp->dm_libctfn[count],
		    "LM%lx`%s", lmid, p);
	if (dcp->dpa_dmp->dm_libctfn[count] == NULL)
		return (1);
	FUNC5(fp, dcp->dpa_dmp);
	dcp->dpa_count++;
	return (0);
}