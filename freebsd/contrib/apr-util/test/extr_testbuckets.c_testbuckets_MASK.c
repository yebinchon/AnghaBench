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
typedef  int /*<<< orphan*/  abts_suite ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  test_bwrite ; 
 int /*<<< orphan*/  test_create ; 
 int /*<<< orphan*/  test_flatten ; 
 int /*<<< orphan*/  test_insertfile ; 
 int /*<<< orphan*/  test_manyfile ; 
 int /*<<< orphan*/  test_partition ; 
 int /*<<< orphan*/  test_simple ; 
 int /*<<< orphan*/  test_split ; 
 int /*<<< orphan*/  test_splitline ; 
 int /*<<< orphan*/  test_splits ; 
 int /*<<< orphan*/  test_truncfile ; 
 int /*<<< orphan*/  test_write_putstrs ; 
 int /*<<< orphan*/  test_write_split ; 

abts_suite *FUNC2(abts_suite *suite)
{
    suite = FUNC0(suite);

    FUNC1(suite, test_create, NULL);
    FUNC1(suite, test_simple, NULL);
    FUNC1(suite, test_flatten, NULL);
    FUNC1(suite, test_split, NULL);
    FUNC1(suite, test_bwrite, NULL);
    FUNC1(suite, test_splitline, NULL);
    FUNC1(suite, test_splits, NULL);
    FUNC1(suite, test_insertfile, NULL);
    FUNC1(suite, test_manyfile, NULL);
    FUNC1(suite, test_truncfile, NULL);
    FUNC1(suite, test_partition, NULL);
    FUNC1(suite, test_write_split, NULL);
    FUNC1(suite, test_write_putstrs, NULL);

    return suite;
}