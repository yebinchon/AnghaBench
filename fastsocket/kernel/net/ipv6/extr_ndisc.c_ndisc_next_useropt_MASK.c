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
struct nd_opt_hdr {int nd_opt_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nd_opt_hdr*) ; 

__attribute__((used)) static struct nd_opt_hdr *FUNC1(struct nd_opt_hdr *cur,
					     struct nd_opt_hdr *end)
{
	if (!cur || !end || cur >= end)
		return NULL;
	do {
		cur = ((void *)cur) + (cur->nd_opt_len << 3);
	} while(cur < end && !FUNC0(cur));
	return (cur <= end && FUNC0(cur) ? cur : NULL);
}