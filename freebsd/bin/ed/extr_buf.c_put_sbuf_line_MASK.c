#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_4__ {size_t len; size_t seek; } ;
typedef  TYPE_1__ line_t ;

/* Variables and functions */
 int LINECHARS ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 char* errmsg ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (char const*,int,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ seek_write ; 
 int /*<<< orphan*/  sfp ; 
 size_t sfseek ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

const char *
FUNC8(const char *cs)
{
	line_t *lp;
	size_t len;
	const char *s;

	if ((lp = (line_t *) FUNC6(sizeof(line_t))) == NULL) {
		FUNC1(stderr, "%s\n", FUNC7(errno));
		errmsg = "out of memory";
		return NULL;
	}
	/* assert: cs is '\n' terminated */
	for (s = cs; *s != '\n'; s++)
		;
	if (s - cs >= LINECHARS) {
		errmsg = "line too long";
		FUNC2(lp);
		return NULL;
	}
	len = s - cs;
	/* out of position */
	if (seek_write) {
		if (FUNC3(sfp, (off_t)0, SEEK_END) < 0) {
			FUNC1(stderr, "%s\n", FUNC7(errno));
			errmsg = "cannot seek temp file";
			FUNC2(lp);
			return NULL;
		}
		sfseek = FUNC4(sfp);
		seek_write = 0;
	}
	/* assert: SPL1() */
	if (FUNC5(cs, sizeof(char), len, sfp) != len) {
		sfseek = -1;
		FUNC1(stderr, "%s\n", FUNC7(errno));
		errmsg = "cannot write temp file";
		FUNC2(lp);
		return NULL;
	}
	lp->len = len;
	lp->seek  = sfseek;
	FUNC0(lp);
	sfseek += len;			/* update file position */
	return ++s;
}