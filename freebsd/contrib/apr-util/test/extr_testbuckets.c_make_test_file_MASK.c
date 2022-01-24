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
typedef  int /*<<< orphan*/  apr_file_t ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int APR_FOPEN_CREATE ; 
 int APR_FOPEN_READ ; 
 int APR_FOPEN_TRUNCATE ; 
 int APR_FOPEN_WRITE ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 scalar_t__ APR_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  p ; 

__attribute__((used)) static apr_file_t *FUNC3(abts_case *tc, const char *fname,
                                  const char *contents)
{
    apr_file_t *f;

    FUNC0(tc, "create test file",
                FUNC1(&f, fname,
                              APR_FOPEN_READ|APR_FOPEN_WRITE|APR_FOPEN_TRUNCATE|APR_FOPEN_CREATE,
                              APR_OS_DEFAULT, p) == APR_SUCCESS);
    
    FUNC0(tc, "write test file contents",
                FUNC2(contents, f) == APR_SUCCESS);

    return f;
}