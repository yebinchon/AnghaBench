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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  builtin_flags ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int exitstatus ; 
 char* FUNC4 (char*) ; 

int
FUNC5(int argc, char **argv)
{
        char *p;
        char *concat;
        char **ap;

        if (argc > 1) {
                p = argv[1];
                if (argc > 2) {
                        FUNC0(concat);
                        ap = argv + 2;
                        for (;;) {
                                FUNC2(p, concat);
                                if ((p = *ap++) == NULL)
                                        break;
                                FUNC1(' ', concat);
                        }
                        FUNC1('\0', concat);
                        p = FUNC4(concat);
                }
                FUNC3(p, builtin_flags);
        } else
                exitstatus = 0;
        return exitstatus;
}