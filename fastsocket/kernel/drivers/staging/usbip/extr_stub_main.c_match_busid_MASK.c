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
 scalar_t__** busid_table ; 
 int /*<<< orphan*/  busid_table_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char const*,int /*<<< orphan*/ ) ; 

int FUNC3(const char *busid)
{
	int i;

	FUNC0(&busid_table_lock);

	for (i = 0; i < MAX_BUSID; i++)
		if (busid_table[i][0])
			if (!FUNC2(busid_table[i], busid, BUSID_SIZE)) {
				/* already registerd */
				FUNC1(&busid_table_lock);
				return 0;
			}

	FUNC1(&busid_table_lock);

	return 1;
}