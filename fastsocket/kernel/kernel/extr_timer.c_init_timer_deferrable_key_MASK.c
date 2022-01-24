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
struct timer_list {int dummy; } ;
struct lock_class_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timer_list*,char const*,struct lock_class_key*) ; 
 int /*<<< orphan*/  FUNC1 (struct timer_list*) ; 

void FUNC2(struct timer_list *timer,
			       const char *name,
			       struct lock_class_key *key)
{
	FUNC0(timer, name, key);
	FUNC1(timer);
}