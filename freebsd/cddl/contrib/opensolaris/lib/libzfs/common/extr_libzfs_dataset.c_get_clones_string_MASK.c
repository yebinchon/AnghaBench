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
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(zfs_handle_t *zhp, char *propbuf, size_t proplen)
{
	nvlist_t *value;
	nvpair_t *pair;

	value = FUNC3(zhp);
	if (value == NULL)
		return (-1);

	propbuf[0] = '\0';
	for (pair = FUNC0(value, NULL); pair != NULL;
	    pair = FUNC0(value, pair)) {
		if (propbuf[0] != '\0')
			(void) FUNC2(propbuf, ",", proplen);
		(void) FUNC2(propbuf, FUNC1(pair), proplen);
	}

	return (0);
}