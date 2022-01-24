#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct atf_tp_impl {int dummy; } ;
struct TYPE_4__ {TYPE_2__* pimpl; } ;
typedef  TYPE_1__ atf_tp_t ;
typedef  int /*<<< orphan*/  atf_error_t ;
struct TYPE_5__ {int /*<<< orphan*/  m_tcs; int /*<<< orphan*/  m_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const* const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_2__* FUNC7 (int) ; 

atf_error_t
FUNC8(atf_tp_t *tp, const char *const *config)
{
    atf_error_t err;

    FUNC1(config != NULL);

    tp->pimpl = FUNC7(sizeof(struct atf_tp_impl));
    if (tp->pimpl == NULL)
        return FUNC6();

    err = FUNC4(&tp->pimpl->m_tcs);
    if (FUNC2(err))
        goto out;

    err = FUNC5(&tp->pimpl->m_config, config);
    if (FUNC2(err)) {
        FUNC3(&tp->pimpl->m_tcs);
        goto out;
    }

    FUNC0(!FUNC2(err));
out:
    return err;
}