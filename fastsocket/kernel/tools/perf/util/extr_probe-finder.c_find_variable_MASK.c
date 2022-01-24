#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct probe_finder {TYPE_2__* pvar; int /*<<< orphan*/  cu_die; int /*<<< orphan*/  addr; TYPE_1__* tvar; } ;
struct TYPE_4__ {char* var; char* type; char* name; } ;
struct TYPE_3__ {int /*<<< orphan*/ * name; int /*<<< orphan*/ * type; int /*<<< orphan*/ * value; } ;
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ *,struct probe_finder*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,char) ; 
 void* FUNC6 (char*) ; 
 int FUNC7 (TYPE_2__*,char*,int) ; 

__attribute__((used)) static int FUNC8(Dwarf_Die *sc_die, struct probe_finder *pf)
{
	Dwarf_Die vr_die;
	char buf[32], *ptr;
	int ret = 0;

	if (!FUNC2(pf->pvar->var)) {
		/* Copy raw parameters */
		pf->tvar->value = FUNC6(pf->pvar->var);
		if (pf->tvar->value == NULL)
			return -ENOMEM;
		if (pf->pvar->type) {
			pf->tvar->type = FUNC6(pf->pvar->type);
			if (pf->tvar->type == NULL)
				return -ENOMEM;
		}
		if (pf->pvar->name) {
			pf->tvar->name = FUNC6(pf->pvar->name);
			if (pf->tvar->name == NULL)
				return -ENOMEM;
		} else
			pf->tvar->name = NULL;
		return 0;
	}

	if (pf->pvar->name)
		pf->tvar->name = FUNC6(pf->pvar->name);
	else {
		ret = FUNC7(pf->pvar, buf, 32);
		if (ret < 0)
			return ret;
		ptr = FUNC5(buf, ':');	/* Change type separator to _ */
		if (ptr)
			*ptr = '_';
		pf->tvar->name = FUNC6(buf);
	}
	if (pf->tvar->name == NULL)
		return -ENOMEM;

	FUNC3("Searching '%s' variable in context.\n", pf->pvar->var);
	/* Search child die for local variables and parameters. */
	if (!FUNC1(sc_die, pf->pvar->var, pf->addr, &vr_die)) {
		/* Search again in global variables */
		if (!FUNC1(&pf->cu_die, pf->pvar->var, 0, &vr_die))
			ret = -ENOENT;
	}
	if (ret >= 0)
		ret = FUNC0(&vr_die, pf);

	if (ret < 0)
		FUNC4("Failed to find '%s' in this function.\n",
			   pf->pvar->var);
	return ret;
}