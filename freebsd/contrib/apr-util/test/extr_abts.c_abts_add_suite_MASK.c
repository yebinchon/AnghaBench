#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int not_run; char const* name; struct TYPE_6__* next; scalar_t__ failed; scalar_t__ num_test; } ;
typedef  TYPE_1__ sub_suite ;
struct TYPE_7__ {TYPE_1__* tail; TYPE_1__* head; } ;
typedef  TYPE_2__ abts_suite ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ curr_char ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ list_tests ; 
 void* FUNC4 (int) ; 
 char const* FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 void* FUNC8 (char const*,char) ; 
 int /*<<< orphan*/  FUNC9 () ; 

abts_suite *FUNC10(abts_suite *suite, const char *suite_name_full)
{
    sub_suite *subsuite;
    char *p;
    const char *suite_name;
    curr_char = 0;
    
    /* Only end the suite if we actually ran it */
    if (suite && suite->tail &&!suite->tail->not_run) {
        FUNC1(suite);
    }

    subsuite = FUNC4(sizeof(*subsuite));
    subsuite->num_test = 0;
    subsuite->failed = 0;
    subsuite->next = NULL;
    /* suite_name_full may be an absolute path depending on __FILE__ 
     * expansion */
    suite_name = FUNC8(suite_name_full, '/');
    if (!suite_name) {
        suite_name = FUNC8(suite_name_full, '\\');
    }
    if (suite_name) {
        suite_name++;
    } else {
        suite_name = suite_name_full;
    }
    p = FUNC8(suite_name, '.');
    if (p) {
        subsuite->name = FUNC5(FUNC0(p - suite_name + 1, 1),
                                suite_name, p - suite_name);
    }
    else {
        subsuite->name = suite_name;
    }

    if (list_tests) {
        FUNC3(stdout, "%s\n", subsuite->name);
    }
    
    subsuite->not_run = 0;

    if (suite == NULL) {
        suite = FUNC4(sizeof(*suite));
        suite->head = subsuite;
        suite->tail = subsuite;
    }
    else {
        suite->tail->next = subsuite;
        suite->tail = subsuite;
    }

    if (!FUNC7(subsuite->name)) {
        subsuite->not_run = 1;
        return suite;
    }

    FUNC6();
    FUNC3(stdout, "%-20s:  ", subsuite->name);
    FUNC9();
    FUNC2(stdout);

    return suite;
}