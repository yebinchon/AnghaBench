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
typedef  int pid_t ;
typedef  int /*<<< orphan*/  atf_dynstr_t ;

/* Variables and functions */
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

pid_t
FUNC7(void)
{
    const pid_t pid = FUNC4();
    if (pid == -1)
        FUNC2("fork failed");

    if (pid == 0) {
        atf_dynstr_t out_name;
        FUNC6(&out_name, FUNC5(), "out", false);

        atf_dynstr_t err_name;
        FUNC6(&err_name, FUNC5(), "err", false);

        FUNC3(STDOUT_FILENO, FUNC0(&out_name));
        FUNC3(STDERR_FILENO, FUNC0(&err_name));

        FUNC1(&err_name);
        FUNC1(&out_name);
    }
    return pid;
}