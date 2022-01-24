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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int const STDERR_FILENO ; 
 int const STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int FUNC1 (int const,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC5(const int target_fd, const char *name)
{
    if (target_fd == STDOUT_FILENO)
        FUNC3(stdout);
    else if (target_fd == STDERR_FILENO)
        FUNC3(stderr);

    const int new_fd = FUNC4(name, O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (new_fd == -1)
        FUNC2(EXIT_FAILURE, "Cannot create %s", name);
    if (new_fd != target_fd) {
        if (FUNC1(new_fd, target_fd) == -1)
            FUNC2(EXIT_FAILURE, "Cannot redirect to fd %d", target_fd);
    }
    FUNC0(new_fd);
}