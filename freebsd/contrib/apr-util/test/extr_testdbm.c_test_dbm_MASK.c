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
typedef  int /*<<< orphan*/  dbm_table_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_dbm_t ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  APR_DBM_READONLY ; 
 int /*<<< orphan*/  APR_DBM_RWCREATE ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 scalar_t__ APR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  p ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(abts_case *tc, void *data)
{
    apr_dbm_t *db;
    apr_status_t rv;
    dbm_table_t *table;
    const char *type = data;
    const char *file = FUNC3(p, "data/test-", type, NULL);

    rv = FUNC2(&db, type, file, APR_DBM_RWCREATE, APR_OS_DEFAULT, p);
    FUNC0(tc, APR_SUCCESS, rv);

    if (rv != APR_SUCCESS)
        return;

    table = FUNC4();

    FUNC8(tc, db, table);
    FUNC7(tc, db, table);
    FUNC5(tc, db, table);
    FUNC6(tc, db, table);
    FUNC9(tc, db, table);

    FUNC1(db);

    rv = FUNC2(&db, type, file, APR_DBM_READONLY, APR_OS_DEFAULT, p);
    FUNC0(tc, APR_SUCCESS, rv);

    if (rv != APR_SUCCESS)
        return;

    FUNC6(tc, db, table);
    FUNC9(tc, db, table);
    FUNC7(tc, db, table);

    FUNC1(db);
}