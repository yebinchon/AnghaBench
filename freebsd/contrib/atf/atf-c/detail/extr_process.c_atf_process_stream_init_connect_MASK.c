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
struct TYPE_4__ {int m_src_fd; int m_tgt_fd; int /*<<< orphan*/  m_type; } ;
typedef  TYPE_1__ atf_process_stream_t ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  atf_process_stream_type_connect ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

atf_error_t
FUNC4(atf_process_stream_t *sb,
                                const int src_fd, const int tgt_fd)
{
    FUNC1(src_fd >= 0);
    FUNC1(tgt_fd >= 0);
    FUNC1(src_fd != tgt_fd);

    sb->m_type = atf_process_stream_type_connect;
    sb->m_src_fd = src_fd;
    sb->m_tgt_fd = tgt_fd;

    FUNC0(FUNC3(sb));
    return FUNC2();
}