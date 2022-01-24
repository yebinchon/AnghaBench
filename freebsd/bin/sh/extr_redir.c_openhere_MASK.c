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
struct TYPE_6__ {char* expdoc; TYPE_2__* doc; } ;
union node {scalar_t__ type; TYPE_3__ nhere; } ;
struct job {int dummy; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_4__ {char* text; } ;
struct TYPE_5__ {TYPE_1__ narg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORK_NOJOB ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 scalar_t__ NXHERE ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct job*,union node*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (int,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int,char const*,scalar_t__) ; 

__attribute__((used)) static int
FUNC11(union node *redir)
{
	const char *p;
	int pip[2];
	size_t len = 0;
	int flags;
	ssize_t written = 0;

	if (FUNC5(pip) < 0)
		FUNC2("Pipe call failed: %s", FUNC7(errno));

	if (redir->type == NXHERE)
		p = redir->nhere.expdoc;
	else
		p = redir->nhere.doc->narg.text;
	len = FUNC8(p);
	if (len == 0)
		goto out;
	flags = FUNC3(pip[1], F_GETFL, 0);
	if (flags != -1 && FUNC3(pip[1], F_SETFL, flags | O_NONBLOCK) != -1) {
		written = FUNC9(pip[1], p, len);
		if (written < 0)
			written = 0;
		if ((size_t)written == len)
			goto out;
		FUNC3(pip[1], F_SETFL, flags);
	}

	if (FUNC4((struct job *)NULL, (union node *)NULL, FORK_NOJOB) == 0) {
		FUNC1(pip[0]);
		FUNC6(SIGINT, SIG_IGN);
		FUNC6(SIGQUIT, SIG_IGN);
		FUNC6(SIGHUP, SIG_IGN);
		FUNC6(SIGTSTP, SIG_IGN);
		FUNC6(SIGPIPE, SIG_DFL);
		FUNC10(pip[1], p + written, len - written);
		FUNC0(0);
	}
out:
	FUNC1(pip[1]);
	return pip[0];
}