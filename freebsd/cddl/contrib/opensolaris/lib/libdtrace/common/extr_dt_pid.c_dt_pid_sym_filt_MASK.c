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
struct TYPE_7__ {scalar_t__ st_shndx; scalar_t__ st_size; scalar_t__ st_value; } ;
struct TYPE_6__ {scalar_t__ dpp_last_taken; TYPE_2__ dpp_last; int /*<<< orphan*/  dpp_func; } ;
typedef  TYPE_1__ dt_pid_probe_t ;
typedef  TYPE_2__ GElf_Sym ;

/* Variables and functions */
 scalar_t__ SHN_UNDEF ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int FUNC1 (TYPE_1__*,TYPE_2__ const*,char const*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static int
FUNC4(void *arg, const GElf_Sym *symp, const char *func)
{
	dt_pid_probe_t *pp = arg;

	if (symp->st_shndx == SHN_UNDEF)
		return (0);

	if (symp->st_size == 0) {
		FUNC0("st_size of %s is zero\n", func);
		return (0);
	}

	if (pp->dpp_last_taken == 0 ||
	    symp->st_value != pp->dpp_last.st_value ||
	    symp->st_size != pp->dpp_last.st_size) {
		/*
		 * Due to 4524008, _init and _fini may have a bloated st_size.
		 * While this bug has been fixed for a while, old binaries
		 * may exist that still exhibit this problem. As a result, we
		 * don't match _init and _fini though we allow users to
		 * specify them explicitly.
		 */
		if (FUNC3(func, "_init") == 0 || FUNC3(func, "_fini") == 0)
			return (0);

		if ((pp->dpp_last_taken = FUNC2(func, pp->dpp_func)) != 0) {
			pp->dpp_last = *symp;
			return (FUNC1(pp, symp, func));
		}
	}

	return (0);
}