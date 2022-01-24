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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC1(void)
{
	FUNC0(stderr, "Usage:\n");
	FUNC0(stderr, "\tminiboot ACTION FW-FILE [MB-FILE]\n");

	FUNC0(stderr, "\nDescription:\n");
	FUNC0(stderr, "\tFirmware concatenation utility.\n");

	FUNC0(stderr, "\nParameteres:\n");
	FUNC0(stderr, "\t'ACTION'	= [a|d]\n");
	FUNC0(stderr, "\t | 'a'	= Add miniboot firmware.\n");
	FUNC0(stderr, "\t * 'd'	= remove miniboot firmware.\n");
	FUNC0(stderr, "\t'FW-FILE'	= destination for the package.\n");
	FUNC0(stderr, "\t'MB-FILE'	= extra firmware image.\n");
}