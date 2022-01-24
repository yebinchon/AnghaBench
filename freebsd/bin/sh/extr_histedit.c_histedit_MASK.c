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

/* Variables and functions */
 int /*<<< orphan*/  EL_ADDFN ; 
 int /*<<< orphan*/  EL_BIND ; 
 int /*<<< orphan*/  EL_EDITOR ; 
 int /*<<< orphan*/  EL_HIST ; 
 int /*<<< orphan*/  EL_PROMPT ; 
 scalar_t__ Eflag ; 
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 scalar_t__ Vflag ; 
 int /*<<< orphan*/ * _el_fn_complete ; 
 int /*<<< orphan*/  arg0 ; 
 scalar_t__ editing ; 
 int /*<<< orphan*/ * el ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * el_in ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * el_out ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int,char*) ; 
 int /*<<< orphan*/  getprompt ; 
 int /*<<< orphan*/ * hist ; 
 int /*<<< orphan*/  history ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ iflag ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

void
FUNC14(void)
{

#define editing (Eflag || Vflag)

	if (iflag) {
		if (!hist) {
			/*
			 * turn history on
			 */
			INTOFF;
			hist = FUNC6();
			INTON;

			if (hist != NULL)
				FUNC12(FUNC7());
			else
				FUNC10("sh: can't initialize history\n");
		}
		if (editing && !el && FUNC8(0)) { /* && isatty(2) ??? */
			/*
			 * turn editing on
			 */
			char *term;

			INTOFF;
			if (el_in == NULL)
				el_in = FUNC4(0, "r");
			if (el_out == NULL)
				el_out = FUNC4(2, "w");
			if (el_in == NULL || el_out == NULL)
				goto bad;
			term = FUNC9("TERM");
			if (term)
				FUNC11("TERM", term, 1);
			else
				FUNC13("TERM");
			el = FUNC1(arg0, el_in, el_out, el_out);
			if (el != NULL) {
				if (hist)
					FUNC2(el, EL_HIST, history, hist);
				FUNC2(el, EL_PROMPT, getprompt);
				FUNC2(el, EL_ADDFN, "sh-complete",
				    "Filename completion",
				    _el_fn_complete);
			} else {
bad:
				FUNC10("sh: can't initialize editing\n");
			}
			INTON;
		} else if (!editing && el) {
			INTOFF;
			FUNC0(el);
			el = NULL;
			INTON;
		}
		if (el) {
			if (Vflag)
				FUNC2(el, EL_EDITOR, "vi");
			else if (Eflag)
				FUNC2(el, EL_EDITOR, "emacs");
			FUNC2(el, EL_BIND, "^I", "sh-complete", NULL);
			FUNC3(el, NULL);
		}
	} else {
		INTOFF;
		if (el) {	/* no editing if not interactive */
			FUNC0(el);
			el = NULL;
		}
		if (hist) {
			FUNC5(hist);
			hist = NULL;
		}
		INTON;
	}
}