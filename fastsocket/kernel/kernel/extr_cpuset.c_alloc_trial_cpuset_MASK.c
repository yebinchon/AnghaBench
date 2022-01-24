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
struct cpuset {int /*<<< orphan*/  cpus_allowed; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cpuset*) ; 
 struct cpuset* FUNC3 (struct cpuset const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cpuset *FUNC4(const struct cpuset *cs)
{
	struct cpuset *trial;

	trial = FUNC3(cs, sizeof(*cs), GFP_KERNEL);
	if (!trial)
		return NULL;

	if (!FUNC0(&trial->cpus_allowed, GFP_KERNEL)) {
		FUNC2(trial);
		return NULL;
	}
	FUNC1(trial->cpus_allowed, cs->cpus_allowed);

	return trial;
}