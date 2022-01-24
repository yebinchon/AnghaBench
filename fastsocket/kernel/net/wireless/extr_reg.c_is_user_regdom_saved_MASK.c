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
 scalar_t__ FUNC0 (int,char*,char,char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* user_alpha2 ; 

__attribute__((used)) static bool FUNC3(void)
{
	if (user_alpha2[0] == '9' && user_alpha2[1] == '7')
		return false;

	/* This would indicate a mistake on the design */
	if (FUNC0(!FUNC2(user_alpha2) && !FUNC1(user_alpha2),
		 "Unexpected user alpha2: %c%c\n",
		 user_alpha2[0], user_alpha2[1]))
		return false;

	return true;
}