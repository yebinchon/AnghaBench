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
typedef  int /*<<< orphan*/  apr_strmatch_pattern ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 char* FUNC2 (int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * p ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(abts_case *tc, void *data)
{
    apr_pool_t *pool = p;
    const apr_strmatch_pattern *pattern;
    const apr_strmatch_pattern *pattern_nocase;
    const apr_strmatch_pattern *pattern_onechar;
    const apr_strmatch_pattern *pattern_zero;
    const char *match = NULL;
    const char *input1 = "string that contains a patterN...";
    const char *input2 = "string that contains a pattern...";
    const char *input3 = "pattern at the start of a string";
    const char *input4 = "string that ends with a pattern";
    const char *input5 = "patter\200n not found, negative chars in input";
    const char *input6 = "patter\200n, negative chars, contains pattern...";

    pattern = FUNC3(pool, "pattern", 1);
    FUNC1(tc, pattern);
 
    pattern_nocase = FUNC3(pool, "pattern", 0);
    FUNC1(tc, pattern_nocase);

    pattern_onechar = FUNC3(pool, "g", 0);
    FUNC1(tc, pattern_onechar);

    pattern_zero = FUNC3(pool, "", 0);
    FUNC1(tc, pattern_zero);

    match = FUNC2(pattern, input1, FUNC4(input1));
    FUNC0(tc, NULL, match);

    match = FUNC2(pattern, input2, FUNC4(input2));
    FUNC0(tc, input2 + 23, match);

    match = FUNC2(pattern_onechar, input1, FUNC4(input1));
    FUNC0(tc, input1 + 5, match);

    match = FUNC2(pattern_zero, input1, FUNC4(input1));
    FUNC0(tc, input1, match);

    match = FUNC2(pattern_nocase, input1, FUNC4(input1));
    FUNC0(tc, input1 + 23, match);

    match = FUNC2(pattern, input3, FUNC4(input3));
    FUNC0(tc, input3, match);

    match = FUNC2(pattern, input4, FUNC4(input4));
    FUNC0(tc, input4 + 24, match);

    match = FUNC2(pattern, input5, FUNC4(input5));
    FUNC0(tc, NULL, match);

    match = FUNC2(pattern, input6, FUNC4(input6));
    FUNC0(tc, input6 + 35, match);
}