#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  completion; } ;
struct sysfs_dirent {TYPE_1__ u; int /*<<< orphan*/  s_active; } ;

/* Variables and functions */
 int SD_DEACTIVATED_BIAS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct sysfs_dirent *sd)
{
	int v;

	if (FUNC3(!sd))
		return;

	v = FUNC0(&sd->s_active);
	if (FUNC2(v != SD_DEACTIVATED_BIAS))
		return;

	/* atomic_dec_return() is a mb(), we'll always see the updated
	 * sd->u.completion.
	 */
	FUNC1(sd->u.completion);
}