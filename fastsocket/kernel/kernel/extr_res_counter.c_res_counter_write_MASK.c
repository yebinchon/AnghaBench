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
typedef  scalar_t__ (* write_strategy_fn ) (char const*,unsigned long long*) ;
struct res_counter {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long long* FUNC0 (struct res_counter*,int) ; 
 unsigned long long FUNC1 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct res_counter *counter, int member,
		      const char *buf, write_strategy_fn write_strategy)
{
	char *end;
	unsigned long flags;
	unsigned long long tmp, *val;

	if (write_strategy) {
		if (write_strategy(buf, &tmp))
			return -EINVAL;
	} else {
		tmp = FUNC1(buf, &end, 10);
		if (*end != '\0')
			return -EINVAL;
	}
	FUNC2(&counter->lock, flags);
	val = FUNC0(counter, member);
	*val = tmp;
	FUNC3(&counter->lock, flags);
	return 0;
}