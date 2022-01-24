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
struct perf_tool {int ordered_samples; int /*<<< orphan*/  comm; int /*<<< orphan*/  sample; } ;
struct perf_kvm_stat {char* exit_reasons_isa; struct perf_tool tool; int /*<<< orphan*/  session; int /*<<< orphan*/  exit_reasons_size; int /*<<< orphan*/  exit_reasons; int /*<<< orphan*/  file_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  perf_event__process_comm ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct perf_tool*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct perf_tool*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  process_sample_event ; 
 int /*<<< orphan*/  vmx_exit_reasons ; 

__attribute__((used)) static int FUNC6(struct perf_kvm_stat *kvm)
{
	int ret;

	struct perf_tool eops = {
		.sample			= process_sample_event,
		.comm			= perf_event__process_comm,
		.ordered_samples	= true,
	};

	kvm->tool = eops;
	kvm->session = FUNC3(kvm->file_name, O_RDONLY, 0, false,
					 &kvm->tool);
	if (!kvm->session) {
		FUNC5("Initializing perf session failed\n");
		return -EINVAL;
	}

	if (!FUNC2(kvm->session, "kvm record"))
		return -EINVAL;

	/*
	 * Do not use 'isa' recorded in kvm_exit tracepoint since it is not
	 * traced in the old kernel.
	 */
	ret = FUNC1(kvm->session);

	if (ret < 0)
		return ret;

	if (ret == 1) {
		kvm->exit_reasons = vmx_exit_reasons;
		kvm->exit_reasons_size = FUNC0(vmx_exit_reasons);
		kvm->exit_reasons_isa = "VMX";
	}

	return FUNC4(kvm->session, &kvm->tool);
}