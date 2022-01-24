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
 struct mm_struct* FUNC0 () ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,int /*<<< orphan*/ ,int) ; 
 struct mm_struct* FUNC2 (struct mm_struct*,int /*<<< orphan*/ ) ; 

struct mm_struct * FUNC3(void)
{
	struct mm_struct * mm;

	mm = FUNC0();
	if (mm) {
		FUNC1(mm, 0, sizeof(*mm));
		mm = FUNC2(mm, current);
	}
	return mm;
}