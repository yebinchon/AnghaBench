#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int ulong_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_5__ {char* dts_object; char* dts_name; } ;
typedef  TYPE_1__ dtrace_syminfo_t ;
struct TYPE_6__ {int /*<<< orphan*/  pa_dtp; scalar_t__ pa_addr; int /*<<< orphan*/ * pa_ctfp; int /*<<< orphan*/ * pa_file; } ;
typedef  TYPE_2__ dt_printarg_t ;
typedef  scalar_t__ ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;
typedef  scalar_t__ caddr_t ;
typedef  int /*<<< orphan*/  GElf_Sym ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ CTF_ERR ; 
 scalar_t__ CTF_K_FUNCTION ; 
 int NBBY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*,char*) ; 

__attribute__((used)) static void
FUNC6(ctf_id_t base, ulong_t off, dt_printarg_t *pap)
{
	FILE *fp = pap->pa_file;
	ctf_file_t *ctfp = pap->pa_ctfp;
	caddr_t addr = pap->pa_addr + off / NBBY;
	size_t size = FUNC2(ctfp, base);
	ctf_id_t bid = FUNC1(ctfp, base);
	uint64_t pc;
	dtrace_syminfo_t dts;
	GElf_Sym sym;

	if (bid == CTF_ERR || FUNC0(ctfp, bid) != CTF_K_FUNCTION) {
		FUNC3(fp, addr, size);
	} else {
		/* LINTED - alignment */
		pc = *((uint64_t *)addr);
		if (FUNC4(pap->pa_dtp, pc, &sym, &dts) != 0) {
			FUNC3(fp, addr, size);
		} else {
			(void) FUNC5(fp, "%s`%s", dts.dts_object,
			    dts.dts_name);
		}
	}
}