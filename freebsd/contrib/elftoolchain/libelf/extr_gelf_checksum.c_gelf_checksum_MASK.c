#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int e_class; } ;
typedef  TYPE_1__ Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ARGUMENT ; 
 int ELFCLASS32 ; 
 int ELFCLASS64 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC1 (TYPE_1__*,int) ; 

long
FUNC2(Elf *e)
{
	int ec;
	if (e == NULL ||
	    ((ec = e->e_class) != ELFCLASS32 && ec != ELFCLASS64)) {
		FUNC0(ARGUMENT, 0);
		return (0L);
	}
	return (FUNC1(e, ec));
}