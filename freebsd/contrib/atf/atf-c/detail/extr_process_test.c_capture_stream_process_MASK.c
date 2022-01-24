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
struct TYPE_2__ {int m_type; } ;
struct capture_stream {void* m_msg; TYPE_1__ m_base; } ;
typedef  int /*<<< orphan*/  atf_process_child_t ;

/* Variables and functions */
 int /*<<< orphan*/  UNREACHABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
#define  stderr_type 129 
#define  stdout_type 128 

__attribute__((used)) static
void
FUNC3(void *v, atf_process_child_t *c)
{
    struct capture_stream *s = v;

    switch (s->m_base.m_type) {
    case stdout_type:
        s->m_msg = FUNC2(FUNC1(c));
        break;
    case stderr_type:
        s->m_msg = FUNC2(FUNC0(c));
        break;
    default:
        UNREACHABLE;
    }
}