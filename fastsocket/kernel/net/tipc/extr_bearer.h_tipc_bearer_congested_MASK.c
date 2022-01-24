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
struct TYPE_2__ {int /*<<< orphan*/  blocked; } ;
struct bearer {int /*<<< orphan*/  cong_links; TYPE_1__ publ; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bearer*,struct link*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(struct bearer *b_ptr, struct link *l_ptr)
{
	if (FUNC3(b_ptr->publ.blocked))
		return 1;
	if (FUNC0(FUNC1(&b_ptr->cong_links)))
		return 0;
	return !FUNC2(b_ptr, l_ptr);
}