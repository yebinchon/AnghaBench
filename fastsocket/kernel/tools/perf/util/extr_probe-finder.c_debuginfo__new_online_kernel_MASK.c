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
struct debuginfo {int dummy; } ;
typedef  int /*<<< orphan*/  Dwarf_Addr ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct debuginfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct debuginfo*) ; 
 struct debuginfo* FUNC2 (int) ; 

struct debuginfo *FUNC3(unsigned long addr)
{
	struct debuginfo *self = FUNC2(sizeof(struct debuginfo));
	if (!self)
		return NULL;

	if (FUNC0(self, (Dwarf_Addr)addr) < 0) {
		FUNC1(self);
		self = NULL;
	}

	return self;
}