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
 int EBUSY ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  hardware_enable ; 
 int /*<<< orphan*/  hardware_enable_failed ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 TYPE_2__ kvm_dev ; 
 int /*<<< orphan*/  kvm_lock ; 
 int kvm_usage_count ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

__attribute__((used)) static int FUNC8(void)
{
	int r = 0;
	int count;

	FUNC5(&kvm_lock);

	count = ++kvm_usage_count;
	if (kvm_usage_count == 1) {
		FUNC1(&hardware_enable_failed, 0);
		FUNC4(hardware_enable, NULL, 1);

		if (FUNC0(&hardware_enable_failed)) {
			FUNC2();
			r = -EBUSY;
		}
	}

	FUNC6(&kvm_lock);

	if (r == 0) {
		char count_string[20];
		char event_string[] = "EVENT=create";
		char *envp[] = { event_string, count_string, NULL };

		FUNC7(count_string, "COUNT=%d", count);
		FUNC3(&kvm_dev.this_device->kobj, KOBJ_CHANGE, envp);
	}
	return r;
}