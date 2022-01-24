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
struct parse_events_data__terms {int /*<<< orphan*/ * terms; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PE_START_TERMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,struct parse_events_data__terms*,int /*<<< orphan*/ ) ; 

int FUNC4(struct list_head *terms, const char *str)
{
	struct parse_events_data__terms data = {
		.terms = NULL,
	};
	int ret;

	ret = FUNC3(str, &data, PE_START_TERMS);
	if (!ret) {
		FUNC1(data.terms, terms);
		FUNC0(data.terms);
		return 0;
	}

	FUNC2(data.terms);
	return ret;
}