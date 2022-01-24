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
typedef  int /*<<< orphan*/  apr_dbd_row_t ;
typedef  int /*<<< orphan*/  apr_dbd_results_t ;
typedef  int /*<<< orphan*/  apr_dbd_prepared_t ;
typedef  int /*<<< orphan*/  apr_dbd_driver_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int FUNC8(apr_pool_t* pool, apr_dbd_t* handle,
                        const apr_dbd_driver_t* driver)
{
    int rv = 0;
    int i, n;
    const char *query =
        "SELECT * FROM apr_dbd_test WHERE col3 <= %s or col1 = 'bar'" ;
    const char *label = "lowvalues";
    apr_dbd_prepared_t *statement = NULL;
    apr_dbd_results_t *res = NULL;
    apr_dbd_row_t *row = NULL;
    const char *entry = NULL;

    rv = FUNC4(driver, pool, handle, query, label, &statement);
    if (rv) {
        FUNC7("Prepare statement failed!\n%s\n",
               FUNC0(driver, handle, rv));
        return rv;
    }
    rv = FUNC5(driver, pool, handle, &res, statement, 0, "3", NULL);
    if (rv) {
        FUNC7("Exec of prepared statement failed!\n%s\n",
               FUNC0(driver, handle, rv));
        return rv;
    }
    i = 0;
    FUNC7("Selecting rows where col3 <= 3 and bar row where it's unset.\nShould show four rows.\n");
    for (rv = FUNC2(driver, pool, res, &row, -1);
         rv == 0;
         rv = FUNC2(driver, pool, res, &row, -1)) {
        FUNC7("ROW %d:	", ++i) ;
        for (n = 0; n < FUNC3(driver, res); ++n) {
            entry = FUNC1(driver, row, n);
            if (entry == NULL) {
                FUNC7("(null)	") ;
            }
            else {
                FUNC7("%s	", entry);
            }
        }
	FUNC6("\n", stdout);
    }
    return (rv == -1) ? 0 : 1;
}