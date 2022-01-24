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
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(char *pnam)
{
	(void) FUNC1(stderr, "Usage:\n    %s -l [-is] dir-to-look-in "
	    "file-in-dir [xfile-on-file]\n", pnam);
	(void) FUNC1(stderr, "    %s -i [-ls] dir-to-look-in "
	    "file-in-dir [xfile-on-file]\n", pnam);
	(void) FUNC1(stderr, "    %s -s [-il] dir-to-look-in "
	    "file-in-dir [xfile-on-file]\n", pnam);
	(void) FUNC1(stderr, "\t    Perform a lookup\n");
	(void) FUNC1(stderr, "\t    -l == lookup\n");
	(void) FUNC1(stderr, "\t    -i == request FIGNORECASE\n");
	(void) FUNC1(stderr, "\t    -s == request stat(2) and xvattr info\n");
	(void) FUNC1(stderr, "    %s -r [-ea] [-b buffer-size-in-bytes] "
	    "dir-to-look-in [file-in-dir]\n", pnam);
	(void) FUNC1(stderr, "    %s -e [-ra] [-b buffer-size-in-bytes] "
	    "dir-to-look-in [file-in-dir]\n", pnam);
	(void) FUNC1(stderr, "    %s -a [-re] [-b buffer-size-in-bytes] "
	    "dir-to-look-in [file-in-dir]\n", pnam);
	(void) FUNC1(stderr, "\t    Perform a readdir\n");
	(void) FUNC1(stderr, "\t    -r == readdir\n");
	(void) FUNC1(stderr, "\t    -e == request extended entries\n");
	(void) FUNC1(stderr, "\t    -a == request access filtering\n");
	(void) FUNC1(stderr, "\t    -b == buffer size (default 4K)\n");
	(void) FUNC1(stderr, "    %s -A path\n", pnam);
	(void) FUNC1(stderr, "\t    Look up _PC_ACCESS_FILTERING "
	    "for path with pathconf(2)\n");
	(void) FUNC1(stderr, "    %s -E path\n", pnam);
	(void) FUNC1(stderr, "\t    Look up _PC_SATTR_EXISTS "
	    "for path with pathconf(2)\n");
	(void) FUNC1(stderr, "    %s -S path\n", pnam);
	(void) FUNC1(stderr, "\t    Look up _PC_SATTR_EXISTS "
	    "for path with pathconf(2)\n");
	FUNC0(EINVAL);
}