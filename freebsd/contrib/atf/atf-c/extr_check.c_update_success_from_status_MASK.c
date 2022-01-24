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
typedef  int /*<<< orphan*/  atf_process_status_t ;

/* Variables and functions */
 scalar_t__ EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static
void
FUNC7(const char *progname,
                           const atf_process_status_t *status, bool *success)
{
    bool s = FUNC2(status) &&
             FUNC3(status) == EXIT_SUCCESS;

    if (FUNC2(status)) {
        if (FUNC3(status) == EXIT_SUCCESS)
            FUNC0(s);
        else {
            FUNC0(!s);
            FUNC6(stderr, "%s failed with exit code %d\n", progname,
                    FUNC3(status));
        }
    } else if (FUNC4(status)) {
        FUNC0(!s);
        FUNC6(stderr, "%s failed due to signal %d%s\n", progname,
                FUNC5(status),
                FUNC1(status) ? " (core dumped)" : "");
    } else {
        FUNC0(!s);
        FUNC6(stderr, "%s failed due to unknown reason\n", progname);
    }

    *success = s;
}