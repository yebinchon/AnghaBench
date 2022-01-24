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
struct ip_vs_app {int /*<<< orphan*/  a_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  __ip_vs_app_mutex ; 
 int /*<<< orphan*/  ip_vs_app_list ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ip_vs_app *app)
{
	/* increase the module use count */
	FUNC0();

	FUNC2(&__ip_vs_app_mutex);

	FUNC1(&app->a_list, &ip_vs_app_list);

	FUNC3(&__ip_vs_app_mutex);

	return 0;
}