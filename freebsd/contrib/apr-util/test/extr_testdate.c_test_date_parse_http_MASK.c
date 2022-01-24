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
typedef  int time_t ;
typedef  int /*<<< orphan*/  guess ;
typedef  int /*<<< orphan*/  apr_uint32_t ;
typedef  int apr_time_t ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int) ; 
 int APR_USEC_PER_SEC ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int* year2secs ; 

__attribute__((used)) static void FUNC7(abts_case *tc, void *data)
{
    int year, i;
    apr_time_t guess;
    apr_time_t offset = 0;
    apr_time_t secstodate, newsecs;
    char datestr[50];

    for (year = 1970; year < 2038; ++year) {
        secstodate = year2secs[year - 1970] + offset;
        FUNC5(datestr, secstodate);
        secstodate *= APR_USEC_PER_SEC;
        newsecs = FUNC2(datestr);
        FUNC0(tc, secstodate == newsecs);
    }

#if APR_HAS_RANDOM
    apr_generate_random_bytes((unsigned char *)&guess, sizeof(guess));
#else
    guess = FUNC4() % FUNC1(4294967291);
#endif

    for (i = 0; i < 10000; ++i) {
        guess = (time_t)FUNC6((apr_uint32_t)guess);
        if (guess < 0)
            guess *= -1;
        secstodate = guess + offset;
        FUNC5(datestr, secstodate);
        secstodate *= APR_USEC_PER_SEC;
        newsecs = FUNC2(datestr);
        FUNC0(tc, secstodate == newsecs);
    }
}