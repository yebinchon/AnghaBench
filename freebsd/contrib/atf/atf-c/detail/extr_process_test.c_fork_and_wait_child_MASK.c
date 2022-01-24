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
 int /*<<< orphan*/  UNREACHABLE ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int
FUNC3(void (*child_func)(void))
{
    pid_t pid;
    int status;

    pid = FUNC1();
    FUNC0(pid != -1);
    if (pid == 0) {
        status = 0; /* Silence compiler warnings */
        child_func();
        UNREACHABLE;
    } else {
        FUNC0(FUNC2(pid, &status, 0) != 0);
    }

    return status;
}