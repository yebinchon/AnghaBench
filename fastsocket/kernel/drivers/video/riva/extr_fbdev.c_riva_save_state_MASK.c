#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct riva_regs {int /*<<< orphan*/ * seq; int /*<<< orphan*/ * gra; int /*<<< orphan*/ * attr; int /*<<< orphan*/ * crtc; int /*<<< orphan*/  misc_output; int /*<<< orphan*/  ext; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* UnloadStateExt ) (TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* LockUnlock ) (TYPE_1__*,int /*<<< orphan*/ ) ;} ;
struct riva_par {TYPE_1__ riva; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct riva_par*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct riva_par*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct riva_par*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct riva_par*) ; 
 int NUM_ATC_REGS ; 
 int NUM_CRT_REGS ; 
 int NUM_GRC_REGS ; 
 int NUM_SEQ_REGS ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct riva_par*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct riva_par *par, struct riva_regs *regs)
{
	int i;

	FUNC4();
	par->riva.LockUnlock(&par->riva, 0);

	par->riva.UnloadStateExt(&par->riva, &regs->ext);

	regs->misc_output = FUNC3(par);

	for (i = 0; i < NUM_CRT_REGS; i++)
		regs->crtc[i] = FUNC1(par, i);

	for (i = 0; i < NUM_ATC_REGS; i++)
		regs->attr[i] = FUNC0(par, i);

	for (i = 0; i < NUM_GRC_REGS; i++)
		regs->gra[i] = FUNC2(par, i);

	for (i = 0; i < NUM_SEQ_REGS; i++)
		regs->seq[i] = FUNC6(par, i);
	FUNC5();
}