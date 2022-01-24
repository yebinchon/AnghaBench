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
struct TYPE_2__ {double period; } ;
struct hist_entry {TYPE_1__ stat; } ;

/* Variables and functions */
 struct hist_entry* FUNC0 (struct hist_entry*) ; 
 int FUNC1 (char*,size_t,char*,double,double) ; 

__attribute__((used)) static int FUNC2(struct hist_entry *he, char *buf, size_t size)
{
	struct hist_entry *pair = FUNC0(he);
	double new_period = he->stat.period;
	double old_period = pair ? pair->stat.period : 0;

	if (!pair)
		return -1;

	return FUNC1(buf, size, "%.0F / %.0F", new_period, old_period);
}