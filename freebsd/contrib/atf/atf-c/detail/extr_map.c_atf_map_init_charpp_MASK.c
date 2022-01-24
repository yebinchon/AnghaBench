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
typedef  int /*<<< orphan*/  atf_map_t ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

atf_error_t
FUNC7(atf_map_t *m, const char *const *array)
{
    atf_error_t err;
    const char *const *ptr = array;

    err = FUNC4(m);
    if (array != NULL) {
        while (!FUNC1(err) && *ptr != NULL) {
            const char *key, *value;

            key = *ptr;
            FUNC0(key != NULL);
            ptr++;

            if ((value = *ptr) == NULL) {
                err = FUNC2(EINVAL, "List too short; no value for "
                    "key '%s' provided", key);  /* XXX: Not really libc_error */
                break;
            }
            ptr++;

            err = FUNC5(m, key, FUNC6(value), true);
        }
    }

    if (FUNC1(err))
        FUNC3(m);

    return err;
}