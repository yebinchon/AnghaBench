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
typedef  int /*<<< orphan*/  atf_tp_t ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char** FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ ** FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static
void
FUNC6(const atf_tp_t *tp)
{
    const atf_tc_t *const *tcs;
    const atf_tc_t *const *tcsptr;

    FUNC4("Content-Type: application/X-atf-tp; version=\"1\"\n\n");

    tcs = FUNC2(tp);
    FUNC0(tcs != NULL);  /* Should be checked. */
    for (tcsptr = tcs; *tcsptr != NULL; tcsptr++) {
        const atf_tc_t *tc = *tcsptr;
        char **vars = FUNC1(tc);
        char **ptr;

        FUNC0(vars != NULL);  /* Should be checked. */

        if (tcsptr != tcs)  /* Not first. */
            FUNC4("\n");

        for (ptr = vars; *ptr != NULL; ptr += 2) {
            if (FUNC5(*ptr, "ident") == 0) {
                FUNC4("ident: %s\n", *(ptr + 1));
                break;
            }
        }

        for (ptr = vars; *ptr != NULL; ptr += 2) {
            if (FUNC5(*ptr, "ident") != 0) {
                FUNC4("%s: %s\n", *ptr, *(ptr + 1));
            }
        }

        FUNC3(vars);
    }
}