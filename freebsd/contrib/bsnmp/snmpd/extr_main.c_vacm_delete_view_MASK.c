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
struct vacm_view {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct vacm_view*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vacm_view*) ; 
 int /*<<< orphan*/  vacm_view ; 
 int /*<<< orphan*/  vacm_viewlist ; 
 int /*<<< orphan*/  vvl ; 

int
FUNC2(struct vacm_view *view)
{
	FUNC0(&vacm_viewlist, view, vacm_view, vvl);
	FUNC1(view);

	return (0);
}