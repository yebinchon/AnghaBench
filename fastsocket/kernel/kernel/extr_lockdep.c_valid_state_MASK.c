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
struct task_struct {int dummy; } ;
struct held_lock {int dummy; } ;
typedef  enum lock_usage_bit { ____Placeholder_lock_usage_bit } lock_usage_bit ;
struct TYPE_2__ {int usage_mask; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct held_lock*) ; 
 int FUNC1 (struct task_struct*,struct held_lock*,int,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline int
FUNC3(struct task_struct *curr, struct held_lock *this,
	    enum lock_usage_bit new_bit, enum lock_usage_bit bad_bit)
{
	if (FUNC2(FUNC0(this)->usage_mask & (1 << bad_bit)))
		return FUNC1(curr, this, bad_bit, new_bit);
	return 1;
}