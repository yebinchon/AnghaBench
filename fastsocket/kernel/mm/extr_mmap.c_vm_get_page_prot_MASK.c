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
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 unsigned long VM_EXEC ; 
 unsigned long VM_READ ; 
 unsigned long VM_SHARED ; 
 unsigned long VM_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * protection_map ; 

pgprot_t FUNC3(unsigned long vm_flags)
{
	return FUNC0(FUNC2(protection_map[vm_flags &
				(VM_READ|VM_WRITE|VM_EXEC|VM_SHARED)]) |
			FUNC2(FUNC1(vm_flags)));
}