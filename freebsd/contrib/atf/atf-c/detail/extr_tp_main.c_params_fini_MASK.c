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
struct params {int /*<<< orphan*/ * m_tcname; int /*<<< orphan*/  m_srcdir; int /*<<< orphan*/  m_resfile; int /*<<< orphan*/  m_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void
FUNC3(struct params *p)
{
    FUNC1(&p->m_config);
    FUNC0(&p->m_resfile);
    FUNC0(&p->m_srcdir);
    if (p->m_tcname != NULL)
        FUNC2(p->m_tcname);
}