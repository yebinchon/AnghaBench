#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct elfcopy {char const* otgt; void* oem; int /*<<< orphan*/  otf; int /*<<< orphan*/  oed; int /*<<< orphan*/  oec; } ;
typedef  int /*<<< orphan*/  Elftc_Bfd_Target ;

/* Variables and functions */
 int /*<<< orphan*/  ETF_EFI ; 
 int /*<<< orphan*/  ETF_ELF ; 
 int /*<<< orphan*/  ETF_PE ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static void
FUNC6(struct elfcopy *ecp, const char *target_name)
{
	Elftc_Bfd_Target *tgt;

	if ((tgt = FUNC0(target_name)) == NULL)
		FUNC5(EXIT_FAILURE, "%s: invalid target name", target_name);
	ecp->otf = FUNC3(tgt);
	if (ecp->otf == ETF_ELF) {
		ecp->oec = FUNC2(tgt);
		ecp->oed = FUNC1(tgt);
		ecp->oem = FUNC4(tgt);
	}
	if (ecp->otf == ETF_EFI || ecp->otf == ETF_PE)
		ecp->oem = FUNC4(tgt);

	ecp->otgt = target_name;
}