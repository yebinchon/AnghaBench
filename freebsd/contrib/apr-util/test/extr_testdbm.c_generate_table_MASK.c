#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int dsize; void* dptr; } ;
struct TYPE_9__ {int dsize; void* dptr; } ;
struct TYPE_11__ {TYPE_2__ key; TYPE_1__ val; } ;
typedef  TYPE_3__ dbm_table_t ;
struct TYPE_12__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_4__ apr_uuid_t ;

/* Variables and functions */
 void* APR_UUID_FORMATTED_LENGTH ; 
 int NUM_TABLE_ROWS ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  p ; 

__attribute__((used)) static dbm_table_t *FUNC5(void)
{
    unsigned int i;
    apr_uuid_t uuid;
    dbm_table_t *table = FUNC1(p, sizeof(*table) * NUM_TABLE_ROWS);

    for (i = 0; i < NUM_TABLE_ROWS/2; i++) {
        FUNC4(&uuid);
        table[i].key.dptr = FUNC2(p, uuid.data, sizeof(uuid.data));
        table[i].key.dsize = sizeof(uuid.data);
        table[i].val.dptr = FUNC0(p, APR_UUID_FORMATTED_LENGTH);
        table[i].val.dsize = APR_UUID_FORMATTED_LENGTH;
        FUNC3(table[i].val.dptr, &uuid);
    }

    for (; i < NUM_TABLE_ROWS; i++) {
        FUNC4(&uuid);
        table[i].val.dptr = FUNC2(p, uuid.data, sizeof(uuid.data));
        table[i].val.dsize = sizeof(uuid.data);
        table[i].key.dptr = FUNC0(p, APR_UUID_FORMATTED_LENGTH);
        table[i].key.dsize = APR_UUID_FORMATTED_LENGTH;
        FUNC3(table[i].key.dptr, &uuid);
    }

    return table;
}