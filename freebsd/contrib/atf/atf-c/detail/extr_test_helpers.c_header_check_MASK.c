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
typedef  int /*<<< orphan*/  failmsg ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char const*) ; 

void
FUNC7(const char *hdrname)
{
    FILE *srcfile;
    char failmsg[128];

    srcfile = FUNC4("test.c", "w");
    FUNC0(srcfile != NULL);
    FUNC5(srcfile, "#include <%s>\n", hdrname);
    FUNC3(srcfile);

    FUNC6(failmsg, sizeof(failmsg),
             "Header check failed; %s is not self-contained", hdrname);

    if (!FUNC2("test.c"))
        FUNC1("%s", failmsg);
}