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
struct TYPE_2__ {int /*<<< orphan*/  pcnt; int /*<<< orphan*/  bcnt; } ;
struct ipt_entry {TYPE_1__ counters; } ;
struct ipt_counters {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipt_counters,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC1(const struct ipt_entry *e,
		     struct ipt_counters total[],
		     unsigned int *i)
{
	FUNC0(total[*i], e->counters.bcnt, e->counters.pcnt);

	(*i)++;
	return 0;
}