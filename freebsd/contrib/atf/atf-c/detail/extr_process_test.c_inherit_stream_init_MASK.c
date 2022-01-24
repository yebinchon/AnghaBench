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
struct inherit_stream {int m_old_fd; int /*<<< orphan*/  m_fd; TYPE_1__ m_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  UNREACHABLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int,int) ; 
#define  stderr_type 129 
#define  stdout_type 128 

__attribute__((used)) static
void
FUNC7(void *v)
{
    struct inherit_stream *s = v;
    const char *name;

    s->m_base.m_sb_ptr = &s->m_base.m_sb;
    FUNC2(FUNC3(&s->m_base.m_sb));

    switch (s->m_base.m_type) {
    case stdout_type:
        s->m_fd = STDOUT_FILENO;
        name = "stdout";
        break;
    case stderr_type:
        s->m_fd = STDERR_FILENO;
        name = "stderr";
        break;
    default:
        UNREACHABLE;
        name = NULL;
    }

    s->m_old_fd = FUNC5(s->m_fd);
    FUNC0(s->m_old_fd != -1);
    FUNC0(FUNC4(s->m_fd) != -1);
    FUNC1(FUNC6(name, O_WRONLY | O_CREAT | O_TRUNC, 0644),
                   s->m_fd);
}