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
struct TYPE_6__ {int /*<<< orphan*/  pr_vaddr; } ;
typedef  TYPE_1__ prmap_t ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_7__ {char const* dpp_obj; int /*<<< orphan*/  dpp_mod; scalar_t__ dpp_lmid; int /*<<< orphan*/  dpp_pr; } ;
typedef  TYPE_2__ dt_pid_probe_t ;

/* Variables and functions */
 int DTRACE_MODNAMELEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,scalar_t__,char*) ; 
 int FUNC2 (TYPE_2__*,TYPE_1__ const*,char const*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 char const* FUNC4 (char const*,char) ; 

__attribute__((used)) static int
FUNC5(void *arg, const prmap_t *pmp, const char *obj)
{
	char name[DTRACE_MODNAMELEN];
	dt_pid_probe_t *pp = arg;

	if (FUNC3(obj, pp->dpp_mod))
		return (FUNC2(pp, pmp, obj));

#ifdef illumos
	(void) Plmid(pp->dpp_pr, pmp->pr_vaddr, &pp->dpp_lmid);
#else
	pp->dpp_lmid = 0;
#endif

	if ((pp->dpp_obj = FUNC4(obj, '/')) == NULL)
		pp->dpp_obj = obj;
	else
		pp->dpp_obj++;

	if (FUNC3(pp->dpp_obj, pp->dpp_mod))
		return (FUNC2(pp, pmp, obj));

#ifdef illumos
	(void) Plmid(pp->dpp_pr, pmp->pr_vaddr, &pp->dpp_lmid);
#endif

	FUNC1(name, sizeof (name), pp->dpp_lmid, pp->dpp_obj);

	if (FUNC3(name, pp->dpp_mod))
		return (FUNC2(pp, pmp, obj));

	return (0);
}