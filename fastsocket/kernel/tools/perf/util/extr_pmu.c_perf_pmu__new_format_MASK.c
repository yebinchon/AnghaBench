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
struct perf_pmu__format {int value; int /*<<< orphan*/  list; int /*<<< orphan*/  bits; int /*<<< orphan*/  name; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct perf_pmu__format* FUNC3 (int) ; 

int FUNC4(struct list_head *list, char *name,
			 int config, unsigned long *bits)
{
	struct perf_pmu__format *format;

	format = FUNC3(sizeof(*format));
	if (!format)
		return -ENOMEM;

	format->name = FUNC2(name);
	format->value = config;
	FUNC1(format->bits, bits, sizeof(format->bits));

	FUNC0(&format->list, list);
	return 0;
}