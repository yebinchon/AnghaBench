#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_8__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_10__ {scalar_t__ (* options ) () ;scalar_t__ (* st_rd ) () ;int /*<<< orphan*/  (* end_rd ) () ;} ;
struct TYPE_9__ {scalar_t__ pad; scalar_t__ skip; } ;
typedef  TYPE_1__ ARCHD ;

/* Variables and functions */
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_8__* frmt ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  s_mask ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 () ; 
 scalar_t__ vflag ; 

void
FUNC17(void)
{
	ARCHD *arcn;
	int res;
	ARCHD archd;
	time_t now;

	arcn = &archd;
	/*
	 * figure out archive type; pass any format specific options to the
	 * archive option processing routine; call the format init routine. We
	 * also save current time for ls_list() so we do not make a system
	 * call for each file we need to print. If verbose (vflag) start up
	 * the name and group caches.
	 */
	if ((FUNC1() < 0) || ((*frmt->options)() < 0) ||
	    ((*frmt->st_rd)() < 0))
		return;

	if (vflag && ((FUNC16() < 0) || (FUNC2() < 0)))
		return;

	now = FUNC15(NULL);

	/*
	 * step through the archive until the format says it is done
	 */
	while (FUNC5(arcn) == 0) {
		/*
		 * check for pattern, and user specified options match.
		 * When all patterns are matched we are done.
		 */
		if ((res = FUNC7(arcn)) < 0)
			break;

		if ((res == 0) && (FUNC10(arcn) == 0)) {
			/*
			 * pattern resulted in a selected file
			 */
			if (FUNC8(arcn) < 0)
				break;

			/*
			 * modify the name as requested by the user if name
			 * survives modification, do a listing of the file
			 */
			if ((res = FUNC4(arcn)) < 0)
				break;
			if (res == 0)
				FUNC3(arcn, now, stdout);
		}

		/*
		 * skip to next archive format header using values calculated
		 * by the format header read routine
		 */
		if (FUNC9(arcn->skip + arcn->pad) == 1)
			break;
	}

	/*
	 * all done, let format have a chance to cleanup, and make sure that
	 * the patterns supplied by the user were all matched
	 */
	(void)(*frmt->end_rd)();
	(void)FUNC11(SIG_BLOCK, &s_mask, NULL);
	FUNC0();
	FUNC6();
}