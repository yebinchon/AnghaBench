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
struct tvec_base {int dummy; } ;
struct timer_list {struct tvec_base* base; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct tvec_base*) ; 

__attribute__((used)) static inline void
FUNC1(struct timer_list *timer, struct tvec_base *new_base)
{
	timer->base = (struct tvec_base *)((unsigned long)(new_base) |
				      FUNC0(timer->base));
}