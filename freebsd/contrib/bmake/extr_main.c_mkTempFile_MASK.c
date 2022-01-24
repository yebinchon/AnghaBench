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
typedef  int /*<<< orphan*/  tfile ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 char* TMPPAT ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC2 () ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int
FUNC7(const char *pattern, char **fnamep)
{
    static char *tmpdir = NULL;
    char tfile[MAXPATHLEN];
    int fd;
    
    if (!pattern)
	pattern = TMPPAT;
    if (!tmpdir)
	tmpdir = FUNC2();
    if (pattern[0] == '/') {
	FUNC4(tfile, sizeof(tfile), "%s", pattern);
    } else {
	FUNC4(tfile, sizeof(tfile), "%s%s", tmpdir, pattern);
    }
    if ((fd = FUNC3(tfile)) < 0)
	FUNC0("Could not create temporary file %s: %s", tfile, FUNC5(errno));
    if (fnamep) {
	*fnamep = FUNC1(tfile);
    } else {
	FUNC6(tfile);			/* we just want the descriptor */
    }
    return fd;
}