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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3 (int line, const char *errmsg, int err)
{
  FUNC1 (stderr, "test-expandargv:%d: %s", line, errmsg);
  if (errno != 0)
    FUNC1 (stderr, ": %s", FUNC2 (err));
  FUNC1 (stderr, "\n");
  FUNC0 (EXIT_FAILURE);
}