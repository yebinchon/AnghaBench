#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* this_device; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 TYPE_2__ kvm_dev ; 
 int /*<<< orphan*/  kvm_lock ; 
 int kvm_usage_count ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void FUNC5(void)
{
	int count;
	char count_string[20];
	char event_string[] = "EVENT=terminate";
	char *envp[] = { event_string, count_string, NULL };

	FUNC2(&kvm_lock);
	FUNC0();
	count = kvm_usage_count;
	FUNC3(&kvm_lock);

	FUNC4(count_string, "COUNT=%d", count);
	FUNC1(&kvm_dev.this_device->kobj, KOBJ_CHANGE, envp);
}