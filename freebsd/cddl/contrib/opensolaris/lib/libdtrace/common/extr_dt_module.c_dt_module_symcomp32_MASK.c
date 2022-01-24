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
struct TYPE_2__ {scalar_t__ st_value; scalar_t__ st_size; scalar_t__ st_name; int /*<<< orphan*/  st_info; } ;
typedef  TYPE_1__ Elf32_Sym ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ STB_WEAK ; 
 scalar_t__ STT_NOTYPE ; 
 scalar_t__ dt_module_strtab ; 
 int FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(const void *lp, const void *rp)
{
	Elf32_Sym *lhs = *((Elf32_Sym **)lp);
	Elf32_Sym *rhs = *((Elf32_Sym **)rp);

	if (lhs->st_value != rhs->st_value)
		return (lhs->st_value > rhs->st_value ? 1 : -1);

	if ((lhs->st_size == 0) != (rhs->st_size == 0))
		return (lhs->st_size == 0 ? 1 : -1);

	if ((FUNC1(lhs->st_info) == STT_NOTYPE) !=
	    (FUNC1(rhs->st_info) == STT_NOTYPE))
		return (FUNC1(lhs->st_info) == STT_NOTYPE ? 1 : -1);

	if ((FUNC0(lhs->st_info) == STB_WEAK) !=
	    (FUNC0(rhs->st_info) == STB_WEAK))
		return (FUNC0(lhs->st_info) == STB_WEAK ? 1 : -1);

	return (FUNC2(dt_module_strtab + lhs->st_name,
	    dt_module_strtab + rhs->st_name));
}