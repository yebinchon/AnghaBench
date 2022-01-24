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
struct params {int m_do_list; int /*<<< orphan*/  m_srcdir; int /*<<< orphan*/  m_resfile; int /*<<< orphan*/  m_config; int /*<<< orphan*/  m_tcpart; int /*<<< orphan*/ * m_tcname; } ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  BODY ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
atf_error_t
FUNC5(struct params *p, const char *argv0)
{
    atf_error_t err;

    p->m_do_list = false;
    p->m_tcname = NULL;
    p->m_tcpart = BODY;

    err = FUNC0(argv0, &p->m_srcdir);
    if (FUNC3(err))
        return err;

    err = FUNC2(&p->m_resfile, "/dev/stdout");
    if (FUNC3(err)) {
        FUNC1(&p->m_srcdir);
        return err;
    }

    err = FUNC4(&p->m_config);
    if (FUNC3(err)) {
        FUNC1(&p->m_resfile);
        FUNC1(&p->m_srcdir);
        return err;
    }

    return err;
}