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

/* Variables and functions */
 int /*<<< orphan*/  BUSID_SIZE ; 
 int MAX_BUSID ; 
 int /*<<< orphan*/ ** busid_table ; 
 int /*<<< orphan*/  busid_table_lock ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(char *busid)
{
	int i;

	if (!FUNC0(busid))
		return 0;

	FUNC1(&busid_table_lock);

	for (i = 0; i < MAX_BUSID; i++)
		if (!busid_table[i][0]) {
			FUNC3(busid_table[i], busid, BUSID_SIZE);
			FUNC2(&busid_table_lock);
			return 0;
		}

	FUNC2(&busid_table_lock);

	return -1;
}