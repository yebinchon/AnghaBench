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
struct timespec {int tv_sec; int tv_nsec; } ;
struct slow_work {int /*<<< orphan*/  mark; } ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 struct timespec CURRENT_TIME ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 
 struct timespec FUNC2 (struct timespec,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct seq_file *m, struct slow_work *work)
{
	struct timespec now, diff;

	now = CURRENT_TIME;
	diff = FUNC2(now, work->mark);

	if (diff.tv_sec < 0)
		FUNC1(m, "  -ve ");
	else if (diff.tv_sec == 0 && diff.tv_nsec < 1000)
		FUNC0(m, "%3luns ", diff.tv_nsec);
	else if (diff.tv_sec == 0 && diff.tv_nsec < 1000000)
		FUNC0(m, "%3luus ", diff.tv_nsec / 1000);
	else if (diff.tv_sec == 0 && diff.tv_nsec < 1000000000)
		FUNC0(m, "%3lums ", diff.tv_nsec / 1000000);
	else if (diff.tv_sec <= 1)
		FUNC1(m, "   1s ");
	else if (diff.tv_sec < 60)
		FUNC0(m, "%4lus ", diff.tv_sec);
	else if (diff.tv_sec < 60 * 60)
		FUNC0(m, "%4lum ", diff.tv_sec / 60);
	else if (diff.tv_sec < 60 * 60 * 24)
		FUNC0(m, "%4luh ", diff.tv_sec / 3600);
	else
		FUNC1(m, "exces ");
}