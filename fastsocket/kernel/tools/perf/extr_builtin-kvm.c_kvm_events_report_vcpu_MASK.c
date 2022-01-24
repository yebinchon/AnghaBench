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
struct perf_kvm_stat {int trace_vcpu; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct perf_kvm_stat*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_kvm_stat*) ; 
 int FUNC2 (struct perf_kvm_stat*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_kvm_stat*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_kvm_stat*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct perf_kvm_stat*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct perf_kvm_stat *kvm)
{
	int ret = -EINVAL;
	int vcpu = kvm->trace_vcpu;

	if (!FUNC7(vcpu))
		goto exit;

	if (!FUNC4(kvm))
		goto exit;

	if (!FUNC3(kvm))
		goto exit;

	FUNC0(kvm);
	FUNC5();

	ret = FUNC2(kvm);
	if (ret)
		goto exit;

	FUNC6(kvm);
	FUNC1(kvm);

exit:
	return ret;
}