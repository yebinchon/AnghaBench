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
struct cache_detail {int flush_time; int /*<<< orphan*/  nextcheck; } ;

/* Variables and functions */
 int LONG_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(struct cache_detail *detail)
{
	detail->flush_time = LONG_MAX;
	detail->nextcheck = FUNC1();
	FUNC0();
	detail->flush_time = 1;
}