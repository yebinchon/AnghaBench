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
typedef  int /*<<< orphan*/  stream_prepare_t ;
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_4__ {int /*<<< orphan*/  m_stderr; int /*<<< orphan*/  m_stdout; int /*<<< orphan*/  m_pid; } ;
typedef  TYPE_1__ atf_process_child_t ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
atf_error_t
FUNC3(atf_process_child_t *c,
          const pid_t pid,
          const stream_prepare_t *outsp,
          const stream_prepare_t *errsp)
{
    atf_error_t err;

    err = FUNC1(c);
    if (FUNC0(err))
        goto out;

    c->m_pid = pid;

    FUNC2(outsp, &c->m_stdout);
    FUNC2(errsp, &c->m_stderr);

out:
    return err;
}