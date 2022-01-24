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
typedef  scalar_t__ Dwarf_Sword ;
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_decl_file ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC1(Dwarf_Die *pdie)
{
	Dwarf_Sword idx;

	if (FUNC0(pdie, DW_AT_decl_file, &idx) == 0)
		return (int)idx;
	else
		return -ENOENT;
}