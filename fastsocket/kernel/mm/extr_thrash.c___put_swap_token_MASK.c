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
struct mm_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  swap_token_lock ; 
 struct mm_struct* swap_token_mm ; 

void FUNC3(struct mm_struct *mm)
{
	FUNC1(&swap_token_lock);
	if (FUNC0(mm == swap_token_mm))
		swap_token_mm = NULL;
	FUNC2(&swap_token_lock);
}