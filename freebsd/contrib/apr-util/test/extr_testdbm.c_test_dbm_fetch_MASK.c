#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  val ;
struct TYPE_8__ {int /*<<< orphan*/  dptr; int /*<<< orphan*/  dsize; } ;
struct TYPE_9__ {TYPE_1__ val; int /*<<< orphan*/  deleted; int /*<<< orphan*/  key; } ;
typedef  TYPE_2__ dbm_table_t ;
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  int /*<<< orphan*/  apr_dbm_t ;
struct TYPE_10__ {int /*<<< orphan*/  dsize; int /*<<< orphan*/  dptr; } ;
typedef  TYPE_3__ apr_datum_t ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  APR_SUCCESS ; 
 unsigned int NUM_TABLE_ROWS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(abts_case *tc, apr_dbm_t *db, dbm_table_t *table)
{
    apr_status_t rv;
    unsigned int i;
    apr_datum_t val;

    for (i = 0; i < NUM_TABLE_ROWS; i++) {
        FUNC4(&val, 0, sizeof(val));
        rv = FUNC1(db, table[i].key, &val);
        if (!table[i].deleted) {
            FUNC0(tc, APR_SUCCESS, rv);
            FUNC0(tc, table[i].val.dsize, val.dsize);
            FUNC0(tc, 0, FUNC3(table[i].val.dptr, val.dptr, val.dsize));
            FUNC2(db, val);
        } else {
            FUNC0(tc, 0, val.dsize);
        }
    }
}