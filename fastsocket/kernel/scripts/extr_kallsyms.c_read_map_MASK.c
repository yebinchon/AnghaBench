#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int start_pos; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_1__* table ; 
 int table_cnt ; 
 int table_size ; 

__attribute__((used)) static void FUNC5(FILE *in)
{
	while (!FUNC1(in)) {
		if (table_cnt >= table_size) {
			table_size += 10000;
			table = FUNC4(table, sizeof(*table) * table_size);
			if (!table) {
				FUNC2(stderr, "out of memory\n");
				FUNC0 (1);
			}
		}
		if (FUNC3(in, &table[table_cnt]) == 0) {
			table[table_cnt].start_pos = table_cnt;
			table_cnt++;
		}
	}
}