#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int fts_info; char* fts_name; int /*<<< orphan*/  fts_path; int /*<<< orphan*/  fts_level; int /*<<< orphan*/  fts_errno; } ;
typedef  TYPE_1__ FTSENT ;
typedef  int /*<<< orphan*/  FTS ;

/* Variables and functions */
#define  FTS_D 131 
#define  FTS_DC 130 
#define  FTS_DNR 129 
#define  FTS_ERR 128 
 int FTS_NAMEONLY ; 
 int FTS_NOSTAT ; 
 int /*<<< orphan*/  FTS_ROOTLEVEL ; 
 int /*<<< orphan*/  FTS_SKIP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  f_label ; 
 scalar_t__ f_listdir ; 
 int /*<<< orphan*/  f_listdot ; 
 scalar_t__ f_nosort ; 
 int /*<<< orphan*/  f_recursive ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (char**,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mastercmp ; 
 int output ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int rval ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,...) ; 

__attribute__((used)) static void
FUNC11(int argc, char *argv[], int options)
{
	FTS *ftsp;
	FTSENT *p, *chp;
	int ch_options;

	if ((ftsp =
	    FUNC3(argv, options, f_nosort ? NULL : mastercmp)) == NULL)
		FUNC1(1, "fts_open");

	/*
	 * We ignore errors from fts_children here since they will be
	 * replicated and signalled on the next call to fts_read() below.
	 */
	chp = FUNC2(ftsp, 0);
	if (chp != NULL)
		FUNC0(NULL, chp, options);
	if (f_listdir)
		return;

	/*
	 * If not recursing down this tree and don't need stat info, just get
	 * the names.
	 */
	ch_options = !f_recursive && !f_label &&
	    options & FTS_NOSTAT ? FTS_NAMEONLY : 0;

	while ((p = FUNC4(ftsp)) != NULL)
		switch (p->fts_info) {
		case FTS_DC:
			FUNC10("%s: directory causes a cycle", p->fts_name);
			break;
		case FTS_DNR:
		case FTS_ERR:
			FUNC10("%s: %s", p->fts_path, FUNC9(p->fts_errno));
			rval = 1;
			break;
		case FTS_D:
			if (p->fts_level != FTS_ROOTLEVEL &&
			    p->fts_name[0] == '.' && !f_listdot)
				break;

			/*
			 * If already output something, put out a newline as
			 * a separator.  If multiple arguments, precede each
			 * directory with its name.
			 */
			if (output) {
				FUNC7('\n');
				(void)FUNC6(p->fts_path);
				FUNC8(":");
			} else if (argc > 1) {
				(void)FUNC6(p->fts_path);
				FUNC8(":");
				output = 1;
			}
			chp = FUNC2(ftsp, ch_options);
			FUNC0(p, chp, options);

			if (!f_recursive && chp != NULL)
				(void)FUNC5(ftsp, p, FTS_SKIP);
			break;
		default:
			break;
		}
	if (errno)
		FUNC1(1, "fts_read");
}