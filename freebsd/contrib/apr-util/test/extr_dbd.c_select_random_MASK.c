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
typedef  int /*<<< orphan*/  apr_dbd_driver_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int FUNC7(apr_pool_t* pool, apr_dbd_t* handle,
                         const apr_dbd_driver_t* driver)
{
    int rv = 0;
    int n;
    const char* entry;
    const char* statement = "SELECT * FROM apr_dbd_test ORDER BY col1, col2";
    apr_dbd_results_t *res = NULL;
    apr_dbd_row_t *row = NULL;
    rv = FUNC4(driver,pool,handle,&res,statement,1);
    if (rv) {
        FUNC6("Select failed: %s", FUNC0(driver, handle, rv));
        return rv;
    }
    rv = FUNC2(driver, pool, res, &row, 5) ;
    if (rv) {
        FUNC6("get_row failed: %s", FUNC0(driver, handle, rv));
        return rv;
    }
    FUNC6("ROW 5:	");
    for (n = 0; n < FUNC3(driver, res); ++n) {
        entry = FUNC1(driver, row, n);
        if (entry == NULL) {
            FUNC6("(null)	") ;
        }
        else {
            FUNC6("%s	", entry);
        }
    }
    FUNC5("\n", stdout);
    rv = FUNC2(driver, pool, res, &row, 1) ;
    if (rv) {
        FUNC6("get_row failed: %s", FUNC0(driver, handle, rv));
        return rv;
    }
    FUNC6("ROW 1:	");
    for (n = 0; n < FUNC3(driver, res); ++n) {
        entry = FUNC1(driver, row, n);
        if (entry == NULL) {
            FUNC6("(null)	") ;
        }
        else {
            FUNC6("%s	", entry);
        }
    }
    FUNC5("\n", stdout);
    rv = FUNC2(driver, pool, res, &row, 11) ;
    if (rv != -1) {
        FUNC6("Oops!  get_row out of range but thinks it succeeded!\n%s\n",
                FUNC0(driver, handle, rv));
        return -1;
    }
    rv = 0;

    return rv;
}