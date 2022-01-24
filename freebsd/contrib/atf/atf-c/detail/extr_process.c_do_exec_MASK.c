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
struct exec_args {int /*<<< orphan*/  m_prog; int /*<<< orphan*/  m_argv; int /*<<< orphan*/  (* m_prehook ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int const) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static
void
FUNC7(void *v)
{
    struct exec_args *ea = v;

    if (ea->m_prehook != NULL)
        ea->m_prehook();

    const int ret = FUNC2(FUNC1(ea->m_prog), ea->m_argv);
    const int errnocopy = errno;
    FUNC0(ret == -1);
    FUNC4(stderr, "exec(%s) failed: %s\n",
            FUNC1(ea->m_prog), FUNC5(errnocopy));
    FUNC3(EXIT_FAILURE);
}