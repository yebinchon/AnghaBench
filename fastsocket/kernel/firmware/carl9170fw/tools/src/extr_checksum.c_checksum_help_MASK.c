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
	FUNC0(stderr, "\tchecksum FW-FILE\n");

	FUNC0(stderr, "\nDescription:\n");
	FUNC0(stderr, "\tThis simple utility adds/updates various "
			"checksums.\n");

	FUNC0(stderr, "\nParameteres:\n");
	FUNC0(stderr, "\t 'FW-FILE'	= firmware name\n");
	FUNC0(stderr, "\n");
}