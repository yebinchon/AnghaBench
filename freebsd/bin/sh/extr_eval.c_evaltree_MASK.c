#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {union node* com; } ;
struct TYPE_9__ {int /*<<< orphan*/  next; int /*<<< orphan*/  text; } ;
struct TYPE_8__ {union node* next; union node* body; } ;
struct TYPE_7__ {union node* elsepart; union node* ifpart; union node* test; } ;
struct TYPE_6__ {union node* ch2; union node* ch1; } ;
union node {int type; TYPE_5__ nnot; TYPE_4__ narg; TYPE_3__ nclist; TYPE_2__ nif; TYPE_1__ nbinary; } ;
struct stackmark {int dummy; } ;
struct backcmd {int dummy; } ;

/* Variables and functions */
 int EV_EXIT ; 
 int EV_TESTED ; 
 int /*<<< orphan*/  EXEXIT ; 
#define  NAND 144 
#define  NBACKGND 143 
#define  NCASE 142 
#define  NCLIST 141 
#define  NCLISTFALLTHRU 140 
#define  NCMD 139 
#define  NDEFUN 138 
#define  NFOR 137 
#define  NIF 136 
#define  NNOT 135 
#define  NOR 134 
#define  NPIPE 133 
#define  NREDIR 132 
#define  NSEMI 131 
#define  NSUBSHELL 130 
#define  NUNTIL 129 
#define  NWHILE 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int displayhist ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ eflag ; 
 union node* FUNC3 (union node*) ; 
 int /*<<< orphan*/  FUNC4 (union node*,int,struct backcmd*) ; 
 int /*<<< orphan*/  FUNC5 (union node*,int) ; 
 int /*<<< orphan*/  FUNC6 (union node*,int) ; 
 int /*<<< orphan*/  FUNC7 (union node*) ; 
 int /*<<< orphan*/  FUNC8 (union node*,int) ; 
 int /*<<< orphan*/  evalskip ; 
 int /*<<< orphan*/  FUNC9 (union node*,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ exitstatus ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  output ; 
 scalar_t__ pendingsig ; 
 int /*<<< orphan*/  FUNC14 (struct stackmark*) ; 
 int /*<<< orphan*/  FUNC15 (struct stackmark*) ; 

void
FUNC16(union node *n, int flags)
{
	int do_etest;
	union node *next;
	struct stackmark smark;

	FUNC15(&smark);
	do_etest = 0;
	if (n == NULL) {
		FUNC0(("evaltree(NULL) called\n"));
		exitstatus = 0;
		goto out;
	}
	do {
		next = NULL;
#ifndef NO_HISTORY
		displayhist = 1;	/* show history substitutions done with fc */
#endif
		FUNC0(("evaltree(%p: %d) called\n", (void )n, n->type));
		switch (n->type) {
		case NSEMI:
			FUNC16(n->nbinary.ch1, flags & ~EV_EXIT);
			if (evalskip)
				goto out;
			next = n->nbinary.ch2;
			break;
		case NAND:
			FUNC16(n->nbinary.ch1, EV_TESTED);
			if (evalskip || exitstatus != 0) {
				goto out;
			}
			next = n->nbinary.ch2;
			break;
		case NOR:
			FUNC16(n->nbinary.ch1, EV_TESTED);
			if (evalskip || exitstatus == 0)
				goto out;
			next = n->nbinary.ch2;
			break;
		case NREDIR:
			FUNC8(n, flags);
			break;
		case NSUBSHELL:
			FUNC9(n, flags);
			do_etest = !(flags & EV_TESTED);
			break;
		case NBACKGND:
			FUNC9(n, flags);
			break;
		case NIF: {
			FUNC16(n->nif.test, EV_TESTED);
			if (evalskip)
				goto out;
			if (exitstatus == 0)
				next = n->nif.ifpart;
			else if (n->nif.elsepart)
				next = n->nif.elsepart;
			else
				exitstatus = 0;
			break;
		}
		case NWHILE:
		case NUNTIL:
			FUNC6(n, flags & ~EV_EXIT);
			break;
		case NFOR:
			FUNC5(n, flags & ~EV_EXIT);
			break;
		case NCASE:
			next = FUNC3(n);
			break;
		case NCLIST:
			next = n->nclist.body;
			break;
		case NCLISTFALLTHRU:
			if (n->nclist.body) {
				FUNC16(n->nclist.body, flags & ~EV_EXIT);
				if (evalskip)
					goto out;
			}
			next = n->nclist.next;
			break;
		case NDEFUN:
			FUNC1(n->narg.text, n->narg.next);
			exitstatus = 0;
			break;
		case NNOT:
			FUNC16(n->nnot.com, EV_TESTED);
			if (evalskip)
				goto out;
			exitstatus = !exitstatus;
			break;

		case NPIPE:
			FUNC7(n);
			do_etest = !(flags & EV_TESTED);
			break;
		case NCMD:
			FUNC4(n, flags, (struct backcmd *)NULL);
			do_etest = !(flags & EV_TESTED);
			break;
		default:
			FUNC13("Node type = %d\n", n->type);
			FUNC12(&output);
			break;
		}
		n = next;
		FUNC14(&smark);
		FUNC15(&smark);
	} while (n != NULL);
out:
	FUNC14(&smark);
	if (pendingsig)
		FUNC2();
	if (eflag && exitstatus != 0 && do_etest)
		FUNC10(exitstatus);
	if (flags & EV_EXIT)
		FUNC11(EXEXIT);
}