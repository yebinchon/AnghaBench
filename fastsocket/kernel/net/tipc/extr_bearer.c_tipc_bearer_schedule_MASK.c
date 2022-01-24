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
struct link {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct bearer {TYPE_1__ publ; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bearer*,struct link*) ; 

void FUNC3(struct bearer *b_ptr, struct link *l_ptr)
{
	FUNC0(&b_ptr->publ.lock);
	FUNC2(b_ptr, l_ptr);
	FUNC1(&b_ptr->publ.lock);
}