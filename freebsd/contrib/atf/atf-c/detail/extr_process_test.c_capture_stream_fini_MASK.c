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
struct TYPE_2__ {int m_type; int /*<<< orphan*/  m_sb; } ;
struct capture_stream {TYPE_1__ m_base; int /*<<< orphan*/  m_msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  UNREACHABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  stderr_type 129 
#define  stdout_type 128 

__attribute__((used)) static
void
FUNC4(void *v)
{
    struct capture_stream *s = v;

    switch (s->m_base.m_type) {
    case stdout_type:
        FUNC0(FUNC2("stdout: msg", s->m_msg));
        FUNC0(!FUNC2("stderr: msg", s->m_msg));
        break;
    case stderr_type:
        FUNC0(!FUNC2("stdout: msg", s->m_msg));
        FUNC0(FUNC2("stderr: msg", s->m_msg));
        break;
    default:
        UNREACHABLE;
    }

    FUNC3(s->m_msg);
    FUNC1(&s->m_base.m_sb);
}