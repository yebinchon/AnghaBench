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
 char* FUNC0 (char*,char) ; 

__attribute__((used)) static char *
FUNC1(char *arg0)
{
	char *cp;

	return ((cp = FUNC0(arg0, '/')) != NULL ? cp + 1 : arg0);
}