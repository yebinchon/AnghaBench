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
struct nvidia_par {int dummy; } ;
struct _riva_hw_state {int /*<<< orphan*/ * seq; int /*<<< orphan*/ * gra; int /*<<< orphan*/ * attr; int /*<<< orphan*/ * crtc; int /*<<< orphan*/  misc_output; } ;

/* Variables and functions */
 int NUM_ATC_REGS ; 
 int NUM_CRT_REGS ; 
 int NUM_GRC_REGS ; 
 int NUM_SEQ_REGS ; 
 int /*<<< orphan*/  FUNC0 (struct nvidia_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvidia_par*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvidia_par*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvidia_par*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvidia_par*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvidia_par*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct nvidia_par*,struct _riva_hw_state*) ; 

__attribute__((used)) static void FUNC9(struct nvidia_par *par,
			    struct _riva_hw_state *state)
{
	int i;

	FUNC6();
	FUNC0(par, 0);

	FUNC8(par, state);

	state->misc_output = FUNC4(par);

	for (i = 0; i < NUM_CRT_REGS; i++)
		state->crtc[i] = FUNC2(par, i);

	for (i = 0; i < NUM_ATC_REGS; i++)
		state->attr[i] = FUNC1(par, i);

	for (i = 0; i < NUM_GRC_REGS; i++)
		state->gra[i] = FUNC3(par, i);

	for (i = 0; i < NUM_SEQ_REGS; i++)
		state->seq[i] = FUNC5(par, i);
	FUNC7();
}