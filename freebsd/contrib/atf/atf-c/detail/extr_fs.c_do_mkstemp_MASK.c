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
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 

__attribute__((used)) static
atf_error_t
FUNC5(char *tmpl, int *fdout)
{
    atf_error_t err;

    FUNC0(FUNC4(tmpl, "XXXXXX") != NULL);

    *fdout = FUNC3(tmpl);
    if (*fdout == -1)
        err = FUNC1(errno, "Cannot create temporary file "
                             "with template '%s'", tmpl);

    else
        err = FUNC2();

    return err;
}