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
struct dev_cgroup {int dummy; } ;
struct cgroup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cgroup*,int /*<<< orphan*/ ) ; 
 struct dev_cgroup* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devices_subsys_id ; 

__attribute__((used)) static inline struct dev_cgroup *FUNC2(struct cgroup *cgroup)
{
	return FUNC1(FUNC0(cgroup, devices_subsys_id));
}