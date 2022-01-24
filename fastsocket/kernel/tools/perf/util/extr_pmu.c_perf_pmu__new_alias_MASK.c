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
struct perf_pmu__alias {int /*<<< orphan*/  list; int /*<<< orphan*/  name; int /*<<< orphan*/  terms; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_pmu__alias*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 
 struct perf_pmu__alias* FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct list_head *list, char *name, FILE *file)
{
	struct perf_pmu__alias *alias;
	char buf[256];
	int ret;

	ret = FUNC1(buf, 1, sizeof(buf), file);
	if (ret == 0)
		return -EINVAL;
	buf[ret] = 0;

	alias = FUNC4(sizeof(*alias));
	if (!alias)
		return -ENOMEM;

	FUNC0(&alias->terms);
	ret = FUNC5(&alias->terms, buf);
	if (ret) {
		FUNC2(alias);
		return ret;
	}

	alias->name = FUNC6(name);
	FUNC3(&alias->list, list);
	return 0;
}