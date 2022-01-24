#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  r_info; } ;
typedef  TYPE_1__ Elf_Internal_Rela ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void const*,TYPE_1__*) ; 
 int /*<<< orphan*/  reldyn_sorting_bfd ; 

__attribute__((used)) static int
FUNC2 (const void *arg1, const void *arg2)
{
  Elf_Internal_Rela int_reloc1;
  Elf_Internal_Rela int_reloc2;

  FUNC1 (reldyn_sorting_bfd, arg1, &int_reloc1);
  FUNC1 (reldyn_sorting_bfd, arg2, &int_reloc2);

  return (FUNC0 (int_reloc1.r_info) - FUNC0 (int_reloc2.r_info));
}