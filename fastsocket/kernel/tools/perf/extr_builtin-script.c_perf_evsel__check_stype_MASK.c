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
typedef  int u64 ;
struct perf_event_attr {int type; int sample_type; } ;
struct perf_evsel {struct perf_event_attr attr; } ;
typedef  enum perf_output_field { ____Placeholder_perf_output_field } perf_output_field ;
struct TYPE_2__ {int fields; scalar_t__ user_set; } ;

/* Variables and functions */
 TYPE_1__* output ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (struct perf_evsel*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct perf_evsel *evsel,
				   u64 sample_type, const char *sample_msg,
				   enum perf_output_field field)
{
	struct perf_event_attr *attr = &evsel->attr;
	int type = attr->type;
	const char *evname;

	if (attr->sample_type & sample_type)
		return 0;

	if (output[type].user_set) {
		evname = FUNC1(evsel);
		FUNC3("Samples for '%s' event do not have %s attribute set. "
		       "Cannot print '%s' field.\n",
		       evname, sample_msg, FUNC0(field));
		return -1;
	}

	/* user did not ask for it explicitly so remove from the default list */
	output[type].fields &= ~field;
	evname = FUNC1(evsel);
	FUNC2("Samples for '%s' event do not have %s attribute set. "
		 "Skipping '%s' field.\n",
		 evname, sample_msg, FUNC0(field));

	return 0;
}