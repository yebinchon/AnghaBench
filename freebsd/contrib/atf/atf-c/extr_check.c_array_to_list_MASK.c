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
typedef  int /*<<< orphan*/  atf_list_t ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (char const* const) ; 

__attribute__((used)) static
atf_error_t
FUNC5(const char *const *a, atf_list_t *l)
{
    atf_error_t err;

    err = FUNC2(l);
    if (FUNC0(err))
        goto out;

    while (*a != NULL) {
        char *item = FUNC4(*a);
        if (item == NULL) {
            err = FUNC3();
            goto out;
        }

        err = FUNC1(l, item, true);
        if (FUNC0(err))
            goto out;

        a++;
    }

out:
    return err;
}