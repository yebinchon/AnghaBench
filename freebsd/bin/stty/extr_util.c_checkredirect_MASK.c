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
struct stat {scalar_t__ st_rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct stat*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void
FUNC3(void)
{
	struct stat sb1, sb2;

	if (FUNC1(STDOUT_FILENO) && FUNC1(STDERR_FILENO) &&
	    !FUNC0(STDOUT_FILENO, &sb1) && !FUNC0(STDERR_FILENO, &sb2) &&
	    (sb1.st_rdev != sb2.st_rdev))
FUNC2("stdout appears redirected, but stdin is the control descriptor");
}