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
struct perf_kvm_stat {char const* file_name; int trace_vcpu; char* report_event; char* sort_key; char* exit_reasons_isa; int /*<<< orphan*/  exit_reasons_size; int /*<<< orphan*/  exit_reasons; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char const**,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct perf_kvm_stat*,int,char const**) ; 
 int FUNC3 (struct perf_kvm_stat*,int,char const**) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,int) ; 
 int /*<<< orphan*/  svm_exit_reasons ; 

__attribute__((used)) static int FUNC6(const char *file_name, int argc, const char **argv)
{
	struct perf_kvm_stat kvm = {
		.file_name = file_name,

		.trace_vcpu	= -1,
		.report_event	= "vmexit",
		.sort_key	= "sample",

		.exit_reasons = svm_exit_reasons,
		.exit_reasons_size = FUNC0(svm_exit_reasons),
		.exit_reasons_isa = "SVM",
	};

	if (argc == 1) {
		FUNC4();
		goto perf_stat;
	}

	if (!FUNC5(argv[1], "rec", 3))
		return FUNC2(&kvm, argc - 1, argv + 1);

	if (!FUNC5(argv[1], "rep", 3))
		return FUNC3(&kvm, argc - 1 , argv + 1);

perf_stat:
	return FUNC1(argc, argv, NULL);
}