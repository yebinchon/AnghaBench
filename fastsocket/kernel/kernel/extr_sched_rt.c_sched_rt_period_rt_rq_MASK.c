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
struct rt_rq {int dummy; } ;
struct rt_bandwidth {int dummy; } ;
struct TYPE_2__ {struct rt_rq rt; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 

__attribute__((used)) static inline
struct rt_rq *FUNC1(struct rt_bandwidth *rt_b, int cpu)
{
	return &FUNC0(cpu)->rt;
}