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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char) ; 
 int FUNC2 () ; 
 int FUNC3 (char*) ; 

int FUNC4(int argc, char *argv[])
{
	FUNC0();

	if (argc != 2 || FUNC3(argv[1]) != 2 || argv[1][0] != '-')
		return FUNC2();

	return FUNC1(argv[1][1]);
}