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
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,int) ; 

__attribute__((used)) static const char *
FUNC1(char *buf, size_t len, int val)
{
	if (val == -1)
		return "*";
	FUNC0(buf, len, "%d", val);
	return buf;
}