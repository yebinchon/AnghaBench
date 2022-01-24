#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* pimpl; } ;
typedef  TYPE_1__ atf_check_result_t ;
struct TYPE_5__ {int /*<<< orphan*/  m_argv; int /*<<< orphan*/  m_dir; int /*<<< orphan*/  m_stderr; int /*<<< orphan*/  m_stdout; int /*<<< orphan*/  m_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void
FUNC5(atf_check_result_t *r)
{
    FUNC2(&r->pimpl->m_status);

    FUNC3(&r->pimpl->m_dir, &r->pimpl->m_stdout,
                   &r->pimpl->m_stderr);
    FUNC0(&r->pimpl->m_stdout);
    FUNC0(&r->pimpl->m_stderr);
    FUNC0(&r->pimpl->m_dir);

    FUNC1(&r->pimpl->m_argv);

    FUNC4(r->pimpl);
}