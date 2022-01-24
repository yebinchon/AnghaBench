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
struct perf_kvm_stat {int /*<<< orphan*/  sort_key; int /*<<< orphan*/  trace_vcpu; int /*<<< orphan*/  report_event; } ;
struct option {int dummy; } ;

/* Variables and functions */
 struct option const FUNC0 () ; 
 struct option const FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*) ; 
 struct option const FUNC2 (char,char*,int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC3 (struct perf_kvm_stat*) ; 
 int FUNC4 (int,char const**,struct option const*,char const* const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const* const*,struct option const*) ; 

__attribute__((used)) static int
FUNC7(struct perf_kvm_stat *kvm, int argc, const char **argv)
{
	const struct option kvm_events_report_options[] = {
		FUNC2(0, "event", &kvm->report_event, "report event",
			    "event for reporting: vmexit, mmio, ioport"),
		FUNC1(0, "vcpu", &kvm->trace_vcpu,
			    "vcpu id to report"),
		FUNC2('k', "key", &kvm->sort_key, "sort-key",
			    "key for sorting: sample(sort by samples number)"
			    " time (sort by avg time)"),
		FUNC0()
	};

	const char * const kvm_events_report_usage[] = {
		"perf kvm stat report [<options>]",
		NULL
	};

	FUNC5();

	if (argc) {
		argc = FUNC4(argc, argv,
				     kvm_events_report_options,
				     kvm_events_report_usage, 0);
		if (argc)
			FUNC6(kvm_events_report_usage,
					   kvm_events_report_options);
	}

	return FUNC3(kvm);
}