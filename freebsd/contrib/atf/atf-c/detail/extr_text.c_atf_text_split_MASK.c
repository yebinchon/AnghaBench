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
typedef  int /*<<< orphan*/  atf_dynstr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char const*) ; 
 char* FUNC8 (char const*,char const*) ; 

atf_error_t
FUNC9(const char *str, const char *delim, atf_list_t *words)
{
    atf_error_t err;
    const char *end;
    const char *iter;

    err = FUNC6(words);
    if (FUNC3(err))
        goto err;

    end = str + FUNC7(str);
    FUNC0(*end == '\0');
    iter = str;
    while (iter < end) {
        const char *ptr;

        FUNC0(iter != NULL);
        ptr = FUNC8(iter, delim);
        if (ptr == NULL)
            ptr = end;

        FUNC0(ptr >= iter);
        if (ptr > iter) {
            atf_dynstr_t word;

            err = FUNC2(&word, iter, ptr - iter);
            if (FUNC3(err))
                goto err_list;

            err = FUNC4(words, FUNC1(&word), true);
            if (FUNC3(err))
                goto err_list;
        }

        iter = ptr + FUNC7(delim);
    }

    FUNC0(!FUNC3(err));
    return err;

err_list:
    FUNC5(words);
err:
    return err;
}