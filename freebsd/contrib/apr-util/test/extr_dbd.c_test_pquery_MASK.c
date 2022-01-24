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
typedef  int /*<<< orphan*/  apr_dbd_prepared_t ;
typedef  int /*<<< orphan*/  apr_dbd_driver_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC7(apr_pool_t* pool, apr_dbd_t* handle,
                       const apr_dbd_driver_t* driver)
{
    int rv = 0;
    const char *query = "INSERT INTO apr_dbd_test VALUES (%s, %s, %d)";
    apr_dbd_prepared_t *statement = NULL;
    const char *label = "testpquery";
    int nrows;
    apr_dbd_transaction_t *trans =0;

    rv = FUNC1(driver, pool, handle, query, label, &statement);
    /* rv = apr_dbd_prepare(driver, pool, handle, query, NULL, &statement); */
    if (rv) {
        FUNC5("Prepare statement failed!\n%s\n",
               FUNC0(driver, handle, rv));
        return rv;
    }
    FUNC4(driver, pool, handle, &trans);
    rv = FUNC2(driver, pool, handle, &nrows, statement,
                         "prepared", "insert", "2", NULL);
    FUNC3(driver, pool, trans);
    if (rv) {
        FUNC5("Exec of prepared statement failed!\n%s\n",
               FUNC0(driver, handle, rv));
        return rv;
    }
    FUNC5("Showing table (should now contain row \"prepared insert 2\")\n");
    FUNC6(pool, handle, driver);
    return rv;
}