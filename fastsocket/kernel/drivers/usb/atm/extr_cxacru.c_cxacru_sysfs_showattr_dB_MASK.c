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
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int s16 ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static ssize_t FUNC2(s16 value, char *buf)
{
	if (FUNC0(value >= 0)) {
		return FUNC1(buf, PAGE_SIZE, "%u.%02u\n",
					value / 100, value % 100);
	} else {
		value = -value;
		return FUNC1(buf, PAGE_SIZE, "-%u.%02u\n",
					value / 100, value % 100);
	}
}