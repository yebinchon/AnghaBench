#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  atf_process_status_t ;
struct TYPE_4__ {int /*<<< orphan*/  m_pid; } ;
typedef  TYPE_1__ atf_process_child_t ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

atf_error_t
FUNC4(atf_process_child_t *c, atf_process_status_t *s)
{
    atf_error_t err;
    int status;

    if (FUNC3(c->m_pid, &status, 0) == -1)
        err = FUNC0(errno, "Failed waiting for process %d",
                             c->m_pid);
    else {
        FUNC1(c);
        err = FUNC2(s, status);
    }

    return err;
}