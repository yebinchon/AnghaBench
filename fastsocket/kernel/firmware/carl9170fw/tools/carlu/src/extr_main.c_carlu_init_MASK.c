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
struct SDL_version {int /*<<< orphan*/  patch; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  SDL_INIT_TIMER ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct SDL_version*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 

__attribute__((used)) static int FUNC6()
{
	struct SDL_version compiled;
	int ret;

	FUNC2(&compiled);
	FUNC3("=== SDL %d.%d.%d ===\n", compiled.major, compiled.minor, compiled.patch);

	ret = FUNC1(SDL_INIT_TIMER);
	if (ret != 0) {
		FUNC4("Unable to initialize SDL: (%s)\n", FUNC0());
		return EXIT_FAILURE;
	}

	return FUNC5();
}