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
struct perf_evsel {int /*<<< orphan*/  name; } ;
struct format_field {int flags; int size; } ;

/* Variables and functions */
 int FIELD_IS_SIGNED ; 
 struct format_field* FUNC0 (struct perf_evsel*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char const*,...) ; 

__attribute__((used)) static int FUNC2(struct perf_evsel *evsel, const char *name,
				  int size, bool should_be_signed)
{
	struct format_field *field = FUNC0(evsel, name);
	int is_signed;
	int ret = 0;

	if (field == NULL) {
		FUNC1("%s: \"%s\" field not found!\n", evsel->name, name);
		return -1;
	}

	is_signed = !!(field->flags | FIELD_IS_SIGNED);
	if (should_be_signed && !is_signed) {
		FUNC1("%s: \"%s\" signedness(%d) is wrong, should be %d\n",
			 evsel->name, name, is_signed, should_be_signed);
		ret = -1;
	}

	if (field->size != size) {
		FUNC1("%s: \"%s\" size (%d) should be %d!\n",
			 evsel->name, name, field->size, size);
		ret = -1;
	}

	return ret;
}