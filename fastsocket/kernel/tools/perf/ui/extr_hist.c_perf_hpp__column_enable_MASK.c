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
struct TYPE_2__ {int cond; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int PERF_HPP__MAX_INDEX ; 
 TYPE_1__* perf_hpp__format ; 

void FUNC1(unsigned col, bool enable)
{
	FUNC0(col >= PERF_HPP__MAX_INDEX);
	perf_hpp__format[col].cond = enable;
}