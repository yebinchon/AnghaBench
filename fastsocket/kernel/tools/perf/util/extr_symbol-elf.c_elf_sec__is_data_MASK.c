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
typedef  int /*<<< orphan*/  GElf_Shdr ;
typedef  int /*<<< orphan*/  Elf_Data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static inline bool FUNC2(const GElf_Shdr *shdr,
				    const Elf_Data *secstrs)
{
	return FUNC1(FUNC0(shdr, secstrs), "data") != NULL;
}