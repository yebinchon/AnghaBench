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
struct seq_file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  last_pid; } ;

/* Variables and functions */
 int FIXED_1 ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  nr_threads ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct seq_file *m, void *v)
{
	unsigned long avnrun[3];

	FUNC2(avnrun, FIXED_1/200, 0);

	FUNC4(m, "%lu.%02lu %lu.%02lu %lu.%02lu %ld/%d %d\n",
		FUNC1(avnrun[0]), FUNC0(avnrun[0]),
		FUNC1(avnrun[1]), FUNC0(avnrun[1]),
		FUNC1(avnrun[2]), FUNC0(avnrun[2]),
		FUNC3(), nr_threads,
		FUNC5(current)->last_pid);
	return 0;
}