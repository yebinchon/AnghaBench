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
struct TYPE_3__ {int m_stdout; } ;
typedef  TYPE_1__ atf_process_child_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

int
FUNC1(atf_process_child_t *c)
{
    FUNC0(c->m_stdout != -1);
    return c->m_stdout;
}