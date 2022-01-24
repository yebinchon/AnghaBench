#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  m_data; } ;
typedef  TYPE_1__ atf_fs_path_t ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t const) ; 
 size_t const atf_dynstr_npos ; 
 size_t FUNC3 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

atf_error_t
FUNC7(const atf_fs_path_t *p, atf_fs_path_t *bp)
{
    const size_t endpos = FUNC3(&p->m_data, '/');
    atf_error_t err;

    if (endpos == atf_dynstr_npos)
        err = FUNC5(bp, ".");
    else if (endpos == 0)
        err = FUNC5(bp, "/");
    else
        err = FUNC2(&bp->m_data, &p->m_data, 0, endpos);

#if defined(HAVE_CONST_DIRNAME)
    INV(atf_equal_dynstr_cstring(&bp->m_data,
                                 dirname(atf_dynstr_cstring(&p->m_data))));
#endif /* defined(HAVE_CONST_DIRNAME) */

    return err;
}