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
struct require_eq_test {char* v1; char* v2; scalar_t__ ok; int /*<<< orphan*/  msg; int /*<<< orphan*/  body; int /*<<< orphan*/ * head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,char*,...) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static
void
FUNC6(const struct require_eq_test *tests)
{
    const struct require_eq_test *t;

    for (t = &tests[0]; t->head != NULL; t++) {
        FUNC4("Checking with %s, %s and expecting %s\n", t->v1, t->v2,
               t->ok ? "true" : "false");

        FUNC3("h_require", t->head, t->body);

        FUNC0(FUNC2("before"));
        if (t->ok) {
            FUNC0(FUNC1("^passed", "result"));
            FUNC0(FUNC2("after"));
        } else {
            FUNC0(FUNC1("^failed: .*macros_test.c"
                ":[0-9]+: %s$", "result", t->msg));
            FUNC0(!FUNC2("after"));
        }

        FUNC0(FUNC5("before") != -1);
        if (t->ok)
            FUNC0(FUNC5("after") != -1);
    }
}