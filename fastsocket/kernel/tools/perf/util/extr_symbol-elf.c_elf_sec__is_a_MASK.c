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
typedef  enum map_type { ____Placeholder_map_type } map_type ;
typedef  int /*<<< orphan*/  GElf_Shdr ;
typedef  int /*<<< orphan*/  Elf_Data ;

/* Variables and functions */
#define  MAP__FUNCTION 129 
#define  MAP__VARIABLE 128 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(GElf_Shdr *shdr, Elf_Data *secstrs,
			  enum map_type type)
{
	switch (type) {
	case MAP__FUNCTION:
		return FUNC1(shdr, secstrs);
	case MAP__VARIABLE:
		return FUNC0(shdr, secstrs);
	default:
		return false;
	}
}