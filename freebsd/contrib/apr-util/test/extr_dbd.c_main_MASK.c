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
#define  APR_EDSOOPEN 132 
#define  APR_EGENERAL 131 
#define  APR_ENOTIMPL 130 
#define  APR_ESYMNOTFOUND 129 
#define  APR_SUCCESS 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  create_table ; 
 int /*<<< orphan*/  drop_table ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  insert_rows ; 
 int /*<<< orphan*/  invalid_op ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,...) ; 
 int /*<<< orphan*/  select_random ; 
 int /*<<< orphan*/  select_sequential ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  test_pquery ; 
 int /*<<< orphan*/  test_pselect ; 
 int /*<<< orphan*/  test_transactions ; 

int FUNC12(int argc, char** argv)
{
    const char *name;
    const char *params;
    apr_pool_t *pool = NULL;
    apr_dbd_t *sql = NULL;
    const apr_dbd_driver_t *driver = NULL;
    int rv;

    FUNC5();
    FUNC6(&pool, NULL);

    if (argc >= 2 && argc <= 3) {
        name = argv[1];
        params = ( argc == 3 ) ? argv[2] : "";
        FUNC3(pool);
        FUNC11(stdout,NULL);
        rv = FUNC2(pool, name, &driver);
        switch (rv) {
        case APR_SUCCESS:
           FUNC10("Loaded %s driver OK.\n", name);
           break;
        case APR_EDSOOPEN:
           FUNC10("Failed to load driver file apr_dbd_%s.so\n", name);
           goto finish;
        case APR_ESYMNOTFOUND:
           FUNC10("Failed to load driver apr_dbd_%s_driver.\n", name);
           goto finish;
        case APR_ENOTIMPL:
           FUNC10("No driver available for %s.\n", name);
           goto finish;
        default:        /* it's a bug if none of the above happen */
           FUNC10("Internal error loading %s.\n", name);
           goto finish;
        }
        rv = FUNC4(driver, pool, params, &sql);
        switch (rv) {
        case APR_SUCCESS:
           FUNC10("Opened %s[%s] OK\n", name, params);
           break;
        case APR_EGENERAL:
           FUNC10("Failed to open %s[%s]\n", name, params);
           goto finish;
        default:        /* it's a bug if none of the above happen */
           FUNC10("Internal error opening %s[%s]\n", name, params);
           goto finish;
        }
        FUNC0("create table", create_table);
        FUNC0("insert rows", insert_rows);
        FUNC0("invalid op", invalid_op);
        FUNC0("select random", select_random);
        FUNC0("select sequential", select_sequential);
        FUNC0("transactions", test_transactions);
        FUNC0("prepared select", test_pselect);
        FUNC0("prepared query", test_pquery);
        FUNC0("drop table", drop_table);
        FUNC1(driver, sql);
    }
    else {
        FUNC9(stderr, "Usage: %s driver-name [params]\n", argv[0]);
    }
finish:
    FUNC7(pool);
    FUNC8();
    return 0;
}