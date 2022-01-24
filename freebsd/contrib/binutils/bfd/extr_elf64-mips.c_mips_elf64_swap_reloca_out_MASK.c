#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_6__ {int /*<<< orphan*/  r_addend; int /*<<< orphan*/  r_type; int /*<<< orphan*/  r_type2; int /*<<< orphan*/  r_type3; int /*<<< orphan*/  r_ssym; int /*<<< orphan*/  r_sym; int /*<<< orphan*/  r_offset; } ;
struct TYPE_5__ {int /*<<< orphan*/  r_addend; int /*<<< orphan*/  r_type; int /*<<< orphan*/  r_type2; int /*<<< orphan*/  r_type3; int /*<<< orphan*/  r_ssym; int /*<<< orphan*/  r_sym; int /*<<< orphan*/  r_offset; } ;
typedef  TYPE_1__ Elf64_Mips_Internal_Rela ;
typedef  TYPE_2__ Elf64_Mips_External_Rela ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (bfd *abfd, const Elf64_Mips_Internal_Rela *src,
			    Elf64_Mips_External_Rela *dst)
{
  FUNC1 (abfd, src->r_offset, dst->r_offset);
  FUNC0 (abfd, src->r_sym, dst->r_sym);
  FUNC2 (abfd, src->r_ssym, dst->r_ssym);
  FUNC2 (abfd, src->r_type3, dst->r_type3);
  FUNC2 (abfd, src->r_type2, dst->r_type2);
  FUNC2 (abfd, src->r_type, dst->r_type);
  FUNC3 (abfd, src->r_addend, dst->r_addend);
}