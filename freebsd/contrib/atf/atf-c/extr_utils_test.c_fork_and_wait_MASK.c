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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EXIT_SUCCESS ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int const,int const,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC5(const int exitstatus, const char* expout, const char* experr)
{
    const pid_t pid = FUNC1();
    FUNC0(pid != -1);
    if (pid == 0) {
        FUNC4(stdout, "Some output\n");
        FUNC4(stderr, "Some error\n");
        FUNC3(123);
    }
    FUNC2(pid, exitstatus, expout, experr);
    FUNC3(EXIT_SUCCESS);
}