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
struct elfcopy {int abi; int nos; char* progname; int /*<<< orphan*/  v_sec; int /*<<< orphan*/  v_arobj; int /*<<< orphan*/  v_symfile; int /*<<< orphan*/  v_symop; int /*<<< orphan*/  v_sadd; int /*<<< orphan*/  v_sac; int /*<<< orphan*/  v_seg; scalar_t__ fill; int /*<<< orphan*/  oed; int /*<<< orphan*/  oec; int /*<<< orphan*/  iec; int /*<<< orphan*/  otf; int /*<<< orphan*/  itf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELFCLASSNONE ; 
 int /*<<< orphan*/  ELFDATANONE ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/  ETF_ELF ; 
 int /*<<< orphan*/  EV_CURRENT ; 
 scalar_t__ EV_NONE ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct elfcopy* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct elfcopy*,int,char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct elfcopy*) ; 
 int /*<<< orphan*/  FUNC11 (struct elfcopy*) ; 
 int /*<<< orphan*/  FUNC12 (struct elfcopy*) ; 
 int /*<<< orphan*/  FUNC13 (struct elfcopy*,int,char**) ; 
 int /*<<< orphan*/  FUNC14 (struct elfcopy*,int,char**) ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

int
FUNC17(int argc, char **argv)
{
	struct elfcopy *ecp;

	if (FUNC5(EV_CURRENT) == EV_NONE)
		FUNC8(EXIT_FAILURE, "ELF library initialization failed: %s",
		    FUNC4(-1));

	ecp = FUNC3(1, sizeof(*ecp));
	if (ecp == NULL)
		FUNC7(EXIT_FAILURE, "calloc failed");

	ecp->itf = ecp->otf = ETF_ELF;
	ecp->iec = ecp->oec = ELFCLASSNONE;
	ecp->oed = ELFDATANONE;
	ecp->abi = -1;
	/* There is always an empty section. */
	ecp->nos = 1;
	ecp->fill = 0;

	FUNC1(&ecp->v_seg);
	FUNC1(&ecp->v_sac);
	FUNC1(&ecp->v_sadd);
	FUNC1(&ecp->v_symop);
	FUNC1(&ecp->v_symfile);
	FUNC1(&ecp->v_arobj);
	FUNC2(&ecp->v_sec);

	if ((ecp->progname = FUNC0()) == NULL)
		ecp->progname = "elfcopy";

	if (FUNC15(ecp->progname, "strip") == 0)
		FUNC14(ecp, argc, argv);
	else if (FUNC15(ecp->progname, "mcs") == 0)
		FUNC13(ecp, argc, argv);
	else {
		if (FUNC15(ecp->progname, "elfcopy") != 0 &&
		    FUNC15(ecp->progname, "objcopy") != 0)
			FUNC16("program mode not known, defaulting to elfcopy");
		FUNC6(ecp, argc, argv);
	}

	FUNC12(ecp);
	FUNC11(ecp);
	FUNC10(ecp);

	FUNC9(EXIT_SUCCESS);
}