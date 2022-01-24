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
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_dbd_t ;
typedef  int /*<<< orphan*/  apr_dbd_driver_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static int FUNC2(apr_pool_t* pool, apr_dbd_t* handle,
                       const apr_dbd_driver_t* driver)
{
    int i;
    int rv = 0;
    int nrows;
    int nerrors = 0;
    const char *statement =
        "INSERT into apr_dbd_test (col1) values ('foo');"
        "INSERT into apr_dbd_test values ('wibble', 'other', 5);"
        "INSERT into apr_dbd_test values ('wibble', 'nothing', 5);"
        "INSERT into apr_dbd_test values ('qwerty', 'foo', 0);"
        "INSERT into apr_dbd_test values ('asdfgh', 'bar', 1);"
    ;
    rv = FUNC0(driver, handle, &nrows, statement);
    if (rv) {
        const char* stmt[] = {
            "INSERT into apr_dbd_test (col1) values ('foo');",
            "INSERT into apr_dbd_test values ('wibble', 'other', 5);",
            "INSERT into apr_dbd_test values ('wibble', 'nothing', 5);",
            "INSERT into apr_dbd_test values ('qwerty', 'foo', 0);",
            "INSERT into apr_dbd_test values ('asdfgh', 'bar', 1);",
            NULL
        };
        FUNC1("Compound insert failed; trying statements one-by-one\n") ;
        for (i=0; stmt[i] != NULL; ++i) {
            statement = stmt[i];
            rv = FUNC0(driver, handle, &nrows, statement);
            if (rv) {
                nerrors++;
            }
        }
        if (nerrors) {
            FUNC1("%d single inserts failed too.\n", nerrors) ;
        }
    }
    return rv;
}