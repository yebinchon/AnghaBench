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
struct check_eq_test {char* v1; char* v2; int /*<<< orphan*/  msg; scalar_t__ ok; int /*<<< orphan*/  body; int /*<<< orphan*/ * head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,char*,...) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,char*) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static
void
FUNC7(const struct check_eq_test *tests)
{
    const struct check_eq_test *t;

    for (t = &tests[0]; t->head != NULL; t++) {
        FUNC5("Checking with %s, %s and expecting %s\n", t->v1, t->v2,
               t->ok ? "true" : "false");

        FUNC4("h_check", t->head, t->body);

        FUNC0(FUNC3("before"));
        FUNC0(FUNC3("after"));

        if (t->ok) {
            FUNC1(FUNC2("^passed", "result"));
        } else {
            FUNC1(FUNC2("^failed", "result"));
            FUNC0(FUNC2("Check failed: .*"
                "macros_test.c:[0-9]+: %s$", "error", t->msg));
        }

        FUNC0(FUNC6("before") != -1);
        FUNC0(FUNC6("after") != -1);
    }
}