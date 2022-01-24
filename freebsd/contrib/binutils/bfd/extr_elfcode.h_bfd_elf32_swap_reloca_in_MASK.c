#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_5__ {int /*<<< orphan*/  r_addend; int /*<<< orphan*/  r_info; int /*<<< orphan*/  r_offset; } ;
struct TYPE_4__ {int /*<<< orphan*/  r_addend; void* r_info; void* r_offset; } ;
typedef  TYPE_1__ Elf_Internal_Rela ;
typedef  TYPE_2__ Elf_External_Rela ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2 (bfd *abfd,
		    const bfd_byte *s,
		    Elf_Internal_Rela *dst)
{
  const Elf_External_Rela *src = (const Elf_External_Rela *) s;
  dst->r_offset = FUNC1 (abfd, src->r_offset);
  dst->r_info = FUNC1 (abfd, src->r_info);
  dst->r_addend = FUNC0 (abfd, src->r_addend);
}