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
struct TYPE_4__ {scalar_t__ seek; size_t len; } ;
typedef  TYPE_1__ line_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_1__ buffer_head ; 
 char* errmsg ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 size_t FUNC2 (char*,int,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int seek_write ; 
 int /*<<< orphan*/  sfp ; 
 scalar_t__ sfseek ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

char *
FUNC5(line_t *lp)
{
	static char *sfbuf = NULL;	/* buffer */
	static size_t sfbufsz;		/* buffer size */

	size_t len;

	if (lp == &buffer_head)
		return NULL;
	seek_write = 1;				/* force seek on write */
	/* out of position */
	if (sfseek != lp->seek) {
		sfseek = lp->seek;
		if (FUNC3(sfp, sfseek, SEEK_SET) < 0) {
			FUNC1(stderr, "%s\n", FUNC4(errno));
			errmsg = "cannot seek temp file";
			return NULL;
		}
	}
	len = lp->len;
	FUNC0(sfbuf, sfbufsz, len + 1, NULL);
	if (FUNC2(sfbuf, sizeof(char), len, sfp) != len) {
		FUNC1(stderr, "%s\n", FUNC4(errno));
		errmsg = "cannot read temp file";
		return NULL;
	}
	sfseek += len;				/* update file position */
	sfbuf[len] = '\0';
	return sfbuf;
}