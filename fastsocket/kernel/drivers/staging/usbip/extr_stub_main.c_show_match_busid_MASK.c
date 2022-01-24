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
struct device_driver {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int MAX_BUSID ; 
 char** busid_table ; 
 int /*<<< orphan*/  busid_table_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC3(struct device_driver *drv, char *buf)
{
	int i;
	char *out = buf;

	FUNC0(&busid_table_lock);

	for (i = 0; i < MAX_BUSID; i++)
		if (busid_table[i][0])
			out += FUNC2(out, "%s ", busid_table[i]);

	FUNC1(&busid_table_lock);

	out += FUNC2(out, "\n");

	return out - buf;
}