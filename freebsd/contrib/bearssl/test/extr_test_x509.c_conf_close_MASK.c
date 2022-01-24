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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * conf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * line_builder ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC5(void)
{
	if (conf != NULL) {
		if (FUNC3(conf)) {
			FUNC4(stderr, "read error on configuration file\n");
			FUNC1(EXIT_FAILURE);
		}
		FUNC2(conf);
		conf = NULL;
	}
	if (line_builder != NULL) {
		FUNC0(line_builder);
		line_builder = NULL;
	}
}