#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {union node* redirect; union node* args; } ;
struct TYPE_5__ {char* text; union node* next; } ;
struct TYPE_4__ {union node* next; } ;
union node {TYPE_3__ ncmd; int /*<<< orphan*/  type; TYPE_2__ narg; TYPE_1__ nfile; } ;
struct ncmd {int dummy; } ;

/* Variables and functions */
 int CHKALIAS ; 
 int /*<<< orphan*/  NCMD ; 
 int /*<<< orphan*/  NDEFUN ; 
 scalar_t__ TLP ; 
 scalar_t__ TREDIR ; 
 int /*<<< orphan*/  TRP ; 
 scalar_t__ TWORD ; 
 int checkkwd ; 
 union node* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int*) ; 
 scalar_t__ funclinno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ lasttoken ; 
 union node* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ plinno ; 
 scalar_t__ quoteflag ; 
 scalar_t__ FUNC7 () ; 
 union node* redirnode ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (char*,char) ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  tokpushback ; 
 int /*<<< orphan*/  wordtext ; 

__attribute__((used)) static union node *
FUNC13(union node **rpp, union node *redir)
{
	union node *args, **app;
	union node **orig_rpp = rpp;
	union node *n = NULL;
	int special;
	int savecheckkwd;

	/* If we don't have any redirections already, then we must reset */
	/* rpp to be the address of the local redir variable.  */
	if (redir == NULL)
		rpp = &redir;

	args = NULL;
	app = &args;
	/*
	 * We save the incoming value, because we need this for shell
	 * functions.  There can not be a redirect or an argument between
	 * the function name and the open parenthesis.
	 */
	orig_rpp = rpp;

	savecheckkwd = CHKALIAS;

	for (;;) {
		checkkwd = savecheckkwd;
		if (FUNC7() == TWORD) {
			n = FUNC4();
			*app = n;
			app = &n->narg.next;
			if (savecheckkwd != 0 && !FUNC3(wordtext))
				savecheckkwd = 0;
		} else if (lasttoken == TREDIR) {
			*rpp = n = redirnode;
			rpp = &n->nfile.next;
			FUNC6();	/* read name of redirection file */
		} else if (lasttoken == TLP && app == &args->narg.next
					    && rpp == orig_rpp) {
			/* We have a function */
			FUNC1(TRP);
			funclinno = plinno;
			/*
			 * - Require plain text.
			 * - Functions with '/' cannot be called.
			 * - Reject name=().
			 * - Reject ksh extended glob patterns.
			 */
			if (!FUNC5(n->narg.text) || quoteflag ||
			    FUNC10(n->narg.text, '/') ||
			    FUNC10("!%*+-=?@}~",
				n->narg.text[FUNC11(n->narg.text) - 1]))
				FUNC12("Bad function name");
			FUNC8(n->narg.text);
			if (FUNC2(n->narg.text, &special) >= 0 &&
			    special)
				FUNC12("Cannot override a special builtin with a function");
			n->type = NDEFUN;
			n->narg.next = FUNC0();
			funclinno = 0;
			return n;
		} else {
			tokpushback++;
			break;
		}
	}
	*app = NULL;
	*rpp = NULL;
	n = (union node *)FUNC9(sizeof (struct ncmd));
	n->type = NCMD;
	n->ncmd.args = args;
	n->ncmd.redirect = redir;
	return n;
}