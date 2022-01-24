#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int ulong_t ;
typedef  int uint8_t ;
struct ps_prochandle {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_6__ {int ftps_size; int /*<<< orphan*/  ftps_func; } ;
typedef  TYPE_1__ fasttrap_probe_spec_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_8__ {char pr_dmodel; int /*<<< orphan*/  pr_pid; } ;
struct TYPE_7__ {scalar_t__ st_value; } ;
typedef  TYPE_2__ GElf_Sym ;

/* Variables and functions */
 int FUNC0 (int) ; 
 char PR_MODEL_LP64 ; 
 TYPE_5__* FUNC1 (struct ps_prochandle*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int FUNC3 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,char) ; 
 char FUNC4 (struct ps_prochandle*) ; 
 int /*<<< orphan*/  FUNC5 (struct ps_prochandle*) ; 

__attribute__((used)) static int
FUNC6(struct ps_prochandle *P, dtrace_hdl_t *dtp,
    uint8_t *text, fasttrap_probe_spec_t *ftp, const GElf_Sym *symp)
{
	ulong_t i;
	int size;
#ifdef illumos
	pid_t pid = Pstatus(P)->pr_pid;
	char dmodel = Pstatus(P)->pr_dmodel;
#else
	pid_t pid = FUNC5(P);
	char dmodel = FUNC4(P);
#endif

	/*
	 * Take a pass through the function looking for a register-dependant
	 * jmp instruction. This could be a jump table so we have to be
	 * ultra conservative.
	 */
	for (i = 0; i < ftp->ftps_size; i += size) {
		size = FUNC3(&text[i], dtp, pid, symp->st_value + i,
		    dmodel);

		/*
		 * Assume the worst if we hit an illegal instruction.
		 */
		if (size <= 0) {
			FUNC2("error at %#lx (assuming jump table)\n", i);
			return (1);
		}

#ifdef notyet
		/*
		 * Register-dependant jmp instructions start with a 0xff byte
		 * and have the modrm.reg field set to 4. They can have an
		 * optional REX prefix on the 64-bit ISA.
		 */
		if ((text[i] == 0xff && DT_MODRM_REG(text[i + 1]) == 4) ||
		    (dmodel == PR_MODEL_LP64 && (text[i] & 0xf0) == 0x40 &&
		    text[i + 1] == 0xff && DT_MODRM_REG(text[i + 2]) == 4)) {
			dt_dprintf("found a suspected jump table at %s:%lx\n",
			    ftp->ftps_func, i);
			return (1);
		}
#endif
	}

	return (0);
}