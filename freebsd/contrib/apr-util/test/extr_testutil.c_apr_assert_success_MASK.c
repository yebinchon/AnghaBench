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
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ APR_ENOTIMPL ; 
 scalar_t__ APR_SUCCESS ; 
 int STRING_MAX ; 
 char* FUNC2 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*,scalar_t__,char*) ; 

void FUNC4(abts_case* tc, const char* context, apr_status_t rv)
{
    if (rv == APR_ENOTIMPL) {
        FUNC1(tc, context);
    }

    if (rv != APR_SUCCESS) {
        char buf[STRING_MAX], ebuf[128];
        FUNC3(buf, "%s (%d): %s\n", context, rv,
                FUNC2(rv, ebuf, sizeof ebuf));
        FUNC0(tc, buf);
    }
}