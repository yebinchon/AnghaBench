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
typedef  long u64 ;
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long,long) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,long*,long*) ; 

__attribute__((used)) static void FUNC2(struct task_struct *tsk, unsigned long *pdirty)
{
	long numerator, denominator;
	unsigned long dirty = *pdirty;
	u64 inv = dirty >> 3;

	FUNC1(tsk, &numerator, &denominator);
	inv *= numerator;
	FUNC0(inv, denominator);

	dirty -= inv;
	if (dirty < *pdirty/2)
		dirty = *pdirty/2;

	*pdirty = dirty;
}