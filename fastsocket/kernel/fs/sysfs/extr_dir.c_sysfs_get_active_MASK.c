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
struct sysfs_dirent {int /*<<< orphan*/  s_active; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static struct sysfs_dirent *FUNC5(struct sysfs_dirent *sd)
{
	if (FUNC4(!sd))
		return NULL;

	while (1) {
		int v, t;

		v = FUNC1(&sd->s_active);
		if (FUNC4(v < 0))
			return NULL;

		t = FUNC0(&sd->s_active, v, v + 1);
		if (FUNC3(t == v))
			return sd;
		if (t < 0)
			return NULL;

		FUNC2();
	}
}