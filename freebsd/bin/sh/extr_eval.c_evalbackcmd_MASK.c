#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  union node {int dummy; } node ;
struct stackmark {int dummy; } ;
struct localvar {int dummy; } ;
struct job {int dummy; } ;
struct jmploc {int /*<<< orphan*/  loc; } ;
struct backcmd {int fd; struct job* jp; scalar_t__ nleft; int /*<<< orphan*/ * buf; } ;
struct TYPE_2__ {unsigned char reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_BACKCMD ; 
 int /*<<< orphan*/  EV_EXIT ; 
 scalar_t__ EXERROR ; 
 int /*<<< orphan*/  FORCEINTON ; 
 int /*<<< orphan*/  FORK_NOJOB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (union node*,int /*<<< orphan*/ ,struct backcmd*) ; 
 int /*<<< orphan*/  FUNC5 (union node*,int /*<<< orphan*/ ) ; 
 scalar_t__ exception ; 
 scalar_t__ exitstatus ; 
 int /*<<< orphan*/  forcelocal ; 
 scalar_t__ FUNC6 (struct job*,union node*,int /*<<< orphan*/ ) ; 
 struct jmploc* handler ; 
 scalar_t__ FUNC7 (union node*) ; 
 struct localvar* localvars ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 struct job* FUNC9 (union node*,int) ; 
 scalar_t__ oexitstatus ; 
 scalar_t__ FUNC10 (int*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct stackmark*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct stackmark*) ; 
 TYPE_1__ shellparam ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

void
FUNC16(union node *n, struct backcmd *result)
{
	int pip[2];
	struct job *jp;
	struct stackmark smark;
	struct jmploc jmploc;
	struct jmploc *savehandler;
	struct localvar *savelocalvars;
	unsigned char saveoptreset;

	result->fd = -1;
	result->buf = NULL;
	result->nleft = 0;
	result->jp = NULL;
	if (n == NULL) {
		exitstatus = 0;
		return;
	}
	FUNC14(&smark);
	exitstatus = oexitstatus;
	if (FUNC7(n)) {
		savelocalvars = localvars;
		localvars = NULL;
		saveoptreset = shellparam.reset;
		forcelocal++;
		savehandler = handler;
		if (FUNC13(jmploc.loc)) {
			if (exception == EXERROR)
				/* nothing */;
			else if (exception != 0) {
				handler = savehandler;
				forcelocal--;
				FUNC11();
				localvars = savelocalvars;
				shellparam.reset = saveoptreset;
				FUNC8(handler->loc, 1);
			}
		} else {
			handler = &jmploc;
			FUNC4(n, EV_BACKCMD, result);
		}
		handler = savehandler;
		forcelocal--;
		FUNC11();
		localvars = savelocalvars;
		shellparam.reset = saveoptreset;
	} else {
		if (FUNC10(pip) < 0)
			FUNC3("Pipe call failed: %s", FUNC15(errno));
		jp = FUNC9(n, 1);
		if (FUNC6(jp, n, FORK_NOJOB) == 0) {
			FORCEINTON;
			FUNC1(pip[0]);
			if (pip[1] != 1) {
				FUNC2(pip[1], 1);
				FUNC1(pip[1]);
			}
			FUNC5(n, EV_EXIT);
		}
		FUNC1(pip[1]);
		result->fd = pip[0];
		result->jp = jp;
	}
	FUNC12(&smark);
	FUNC0(("evalbackcmd done: fd=%d buf=%p nleft=%d jp=%p\n",
		result->fd, result->buf, result->nleft, result->jp));
}