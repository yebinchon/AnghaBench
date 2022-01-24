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
struct ip_vs_app {int /*<<< orphan*/  usecnt; int /*<<< orphan*/  app; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct ip_vs_app *inc)
{
	int result;

	FUNC1(&inc->usecnt);
	if (FUNC3((result = FUNC2(inc->app)) != 1))
		FUNC0(&inc->usecnt);
	return result;
}