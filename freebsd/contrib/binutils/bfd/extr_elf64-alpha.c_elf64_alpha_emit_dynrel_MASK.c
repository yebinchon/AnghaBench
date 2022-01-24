#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct bfd_link_info {int dummy; } ;
typedef  int /*<<< orphan*/  outrel ;
typedef  int bfd_vma ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_10__ {int reloc_count; int size; int /*<<< orphan*/ * contents; scalar_t__ output_offset; TYPE_1__* output_section; } ;
typedef  TYPE_2__ asection ;
struct TYPE_11__ {int r_addend; scalar_t__ r_offset; int /*<<< orphan*/  r_info; } ;
struct TYPE_9__ {scalar_t__ vma; } ;
typedef  TYPE_3__ Elf_Internal_Rela ;
typedef  int /*<<< orphan*/  Elf64_External_Rela ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (long,long) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct bfd_link_info*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5 (bfd *abfd, struct bfd_link_info *info,
			 asection *sec, asection *srel, bfd_vma offset,
			 long dynindx, long rtype, bfd_vma addend)
{
  Elf_Internal_Rela outrel;
  bfd_byte *loc;

  FUNC0 (srel != NULL);

  outrel.r_info = FUNC1 (dynindx, rtype);
  outrel.r_addend = addend;

  offset = FUNC2 (abfd, info, sec, offset);
  if ((offset | 1) != (bfd_vma) -1)
    outrel.r_offset = sec->output_section->vma + sec->output_offset + offset;
  else
    FUNC4 (&outrel, 0, sizeof (outrel));

  loc = srel->contents;
  loc += srel->reloc_count++ * sizeof (Elf64_External_Rela);
  FUNC3 (abfd, &outrel, loc);
  FUNC0 (sizeof (Elf64_External_Rela) * srel->reloc_count <= srel->size);
}