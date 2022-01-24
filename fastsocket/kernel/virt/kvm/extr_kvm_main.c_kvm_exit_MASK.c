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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bad_page ; 
 int /*<<< orphan*/  cpus_hardware_enabled ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hardware_disable ; 
 int /*<<< orphan*/  hwpoison_page ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  kvm_cpu_notifier ; 
 int /*<<< orphan*/  kvm_dev ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  kvm_reboot_notifier ; 
 int /*<<< orphan*/  kvm_sysdev ; 
 int /*<<< orphan*/  kvm_sysdev_class ; 
 int /*<<< orphan*/  kvm_vcpu_cache ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(void)
{
	FUNC10();
	FUNC5();
	FUNC6(&kvm_dev);
	FUNC2(kvm_vcpu_cache);
	FUNC9(&kvm_sysdev);
	FUNC8(&kvm_sysdev_class);
	FUNC12(&kvm_reboot_notifier);
	FUNC11(&kvm_cpu_notifier);
	FUNC7(hardware_disable, NULL, 1);
	FUNC4();
	FUNC3();
	FUNC1(cpus_hardware_enabled);
	FUNC0(hwpoison_page);
	FUNC0(bad_page);
}