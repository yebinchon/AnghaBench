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
struct test_data {int m_type; int /*<<< orphan*/  m_cond; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNREACHABLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  inv 131 
#define  post 130 
#define  pre 129 
#define  unreachable 128 

__attribute__((used)) static
void
FUNC4(void *v)
{
    struct test_data *td = v;

    switch (td->m_type) {
    case inv:
        FUNC0(td->m_cond);
        break;

    case pre:
        FUNC2(td->m_cond);
        break;

    case post:
        FUNC1(td->m_cond);
        break;

    case unreachable:
        if (!td->m_cond)
            UNREACHABLE;
        break;
    }

    FUNC3(EXIT_SUCCESS);
}