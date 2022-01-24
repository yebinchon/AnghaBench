#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int m_type; int /*<<< orphan*/  m_sb; int /*<<< orphan*/ * m_sb_ptr; } ;
struct connect_stream {int m_fd; TYPE_1__ m_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int STDERR_FILENO ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  UNREACHABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 void* FUNC3 (char*,int,int) ; 
#define  stderr_type 129 
#define  stdout_type 128 

__attribute__((used)) static
void
FUNC4(void *v)
{
    struct connect_stream *s = v;
    int src_fd;

    switch (s->m_base.m_type) {
    case stdout_type:
        src_fd = STDOUT_FILENO;
        s->m_fd = FUNC3("stdout", O_WRONLY | O_CREAT | O_TRUNC, 0644);
        break;
    case stderr_type:
        src_fd = STDERR_FILENO;
        s->m_fd = FUNC3("stderr", O_WRONLY | O_CREAT | O_TRUNC, 0644);
        break;
    default:
        UNREACHABLE;
        src_fd = -1;
    }
    FUNC0(s->m_fd != -1);

    s->m_base.m_sb_ptr = &s->m_base.m_sb;
    FUNC1(FUNC2(&s->m_base.m_sb, src_fd, s->m_fd));
}