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
typedef  int /*<<< orphan*/  atf_dynstr_t ;

/* Variables and functions */
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int const STDERR_FILENO ; 
 int const STDOUT_FILENO ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int const) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC4 (char const*,int,int) ; 
 scalar_t__ FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int const,char const*,int const,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(const char *resfile, const char *result, const int arg,
               atf_dynstr_t *reason)
{
    atf_error_t err;

    if (FUNC5("/dev/stdout", resfile) == 0) {
        err = FUNC6(STDOUT_FILENO, result, arg, reason);
    } else if (FUNC5("/dev/stderr", resfile) == 0) {
        err = FUNC6(STDERR_FILENO, result, arg, reason);
    } else {
        const int fd = FUNC4(resfile, O_WRONLY | O_CREAT | O_TRUNC,
            S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
        if (fd == -1) {
            err = FUNC1(errno, "Cannot create results file '%s'",
                                 resfile);
        } else {
            err = FUNC6(fd, result, arg, reason);
            FUNC3(fd);
        }
    }

    if (reason != NULL)
        FUNC0(reason);

    FUNC2(err);
}