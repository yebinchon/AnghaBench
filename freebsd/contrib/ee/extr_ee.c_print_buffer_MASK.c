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
 int /*<<< orphan*/  com_win ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* print_command ; 
 int /*<<< orphan*/  printer_msg_str ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void 
FUNC6()
{
	char buffer[256];

	FUNC1(buffer, ">!%s", print_command);
	FUNC3(com_win, 0, 0);
	FUNC2(com_win);
	FUNC4(com_win, printer_msg_str, print_command);
	FUNC5(com_win);
	FUNC0(buffer);
}