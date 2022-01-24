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
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_6__ {scalar_t__ r_offset; void* r_type3; int /*<<< orphan*/  r_ssym; void* r_type2; int /*<<< orphan*/  r_sym; void* r_type; } ;
struct TYPE_5__ {scalar_t__ r_offset; int /*<<< orphan*/  r_info; } ;
typedef  TYPE_1__ Elf_Internal_Rela ;
typedef  TYPE_2__ Elf64_Mips_Internal_Rela ;
typedef  int /*<<< orphan*/  Elf64_Mips_External_Rel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5 (bfd *abfd, const Elf_Internal_Rela *src,
			      bfd_byte *dst)
{
  Elf64_Mips_Internal_Rela mirel;

  mirel.r_offset = src[0].r_offset;
  FUNC0(src[0].r_offset == src[1].r_offset);

  mirel.r_type = FUNC2 (src[0].r_info);
  mirel.r_sym = FUNC3 (src[0].r_info);
  mirel.r_type2 = FUNC2 (src[1].r_info);
  mirel.r_ssym = FUNC1 (src[1].r_info);
  mirel.r_type3 = FUNC2 (src[2].r_info);

  FUNC4 (abfd, &mirel,
			     (Elf64_Mips_External_Rel *) dst);
}