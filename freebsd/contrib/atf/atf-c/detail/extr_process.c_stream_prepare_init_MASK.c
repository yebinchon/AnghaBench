#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int m_pipefds_ok; int /*<<< orphan*/  m_pipefds; int /*<<< orphan*/  const* m_sb; } ;
typedef  TYPE_1__ stream_prepare_t ;
typedef  int /*<<< orphan*/  atf_process_stream_t ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int const atf_process_stream_type_capture ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
atf_error_t
FUNC4(stream_prepare_t *sp, const atf_process_stream_t *sb)
{
    atf_error_t err;

    const int type = FUNC2(sb);

    sp->m_sb = sb;
    sp->m_pipefds_ok = false;

    if (type == atf_process_stream_type_capture) {
        if (FUNC3(sp->m_pipefds) == -1)
            err = FUNC0(errno, "Failed to create pipe");
        else {
            err = FUNC1();
            sp->m_pipefds_ok = true;
        }
    } else
        err = FUNC1();

    return err;
}