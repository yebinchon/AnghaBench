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
typedef  int /*<<< orphan*/  apr_dbd_transaction_t ;
typedef  int /*<<< orphan*/  apr_dbd_t ;
typedef  int /*<<< orphan*/  apr_dbd_driver_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC6(apr_pool_t* pool, apr_dbd_t* handle,
                             const apr_dbd_driver_t* driver)
{
    int rv = 0;
    int nrows;
    apr_dbd_transaction_t *trans = NULL;
    const char* statement;

    /* trans 1 - error out early */
    FUNC4("Transaction 1\n");
    rv = FUNC3(driver, pool, handle, &trans);
    if (rv) {
        FUNC4("Start transaction failed!\n%s\n",
               FUNC0(driver, handle, rv));
        return rv;
    }
    statement = "UPDATE apr_dbd_test SET col2 = 'failed'";
    rv = FUNC1(driver, handle, &nrows, statement);
    if (rv) {
        FUNC4("Update failed: '%s'\n", FUNC0(driver, handle, rv));
        FUNC2(driver, pool, trans);
        return rv;
    }
    FUNC4("%d rows updated\n", nrows);

    statement = "INSERT INTO apr_dbd_test1 (col3) values (3)";
    rv = FUNC1(driver, handle, &nrows, statement);
    if (!rv) {
        FUNC4("Oops, invalid op succeeded but shouldn't!\n");
    }
    statement = "INSERT INTO apr_dbd_test values ('zzz', 'aaa', 3)";
    rv = FUNC1(driver, handle, &nrows, statement);
    FUNC4("Valid insert returned %d.  Should be nonzero (fail) because transaction is bad\n", rv) ;

    rv = FUNC2(driver, pool, trans);
    if (rv) {
        FUNC4("End transaction failed!\n%s\n",
               FUNC0(driver, handle, rv));
        return rv;
    }
    FUNC4("Transaction ended (should be rollback) - viewing table\n"
           "A column of \"failed\" indicates transaction failed (no rollback)\n");
    FUNC5(pool, handle, driver);

    /* trans 2 - complete successfully */
    FUNC4("Transaction 2\n");
    rv = FUNC3(driver, pool, handle, &trans);
    if (rv) {
        FUNC4("Start transaction failed!\n%s\n",
               FUNC0(driver, handle, rv));
        return rv;
    }
    statement = "UPDATE apr_dbd_test SET col2 = 'success'";
    rv = FUNC1(driver, handle, &nrows, statement);
    if (rv) {
        FUNC4("Update failed: '%s'\n", FUNC0(driver, handle, rv));
        FUNC2(driver, pool, trans);
        return rv;
    }
    FUNC4("%d rows updated\n", nrows);
    statement = "INSERT INTO apr_dbd_test values ('aaa', 'zzz', 3)";
    rv = FUNC1(driver, handle, &nrows, statement);
    FUNC4("Valid insert returned %d.  Should be zero (OK)\n", rv) ;
    rv = FUNC2(driver, pool, trans);
    if (rv) {
        FUNC4("End transaction failed!\n%s\n",
               FUNC0(driver, handle, rv));
        return rv;
    }
    FUNC4("Transaction ended (should be commit) - viewing table\n");
    FUNC5(pool, handle, driver);
    return rv;
}