#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ bfd_vma ;
struct TYPE_5__ {scalar_t__ r_offset; int /*<<< orphan*/  r_info; } ;
typedef  TYPE_1__ Elf_Internal_Rela ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Elf_Internal_Rela *
FUNC1 (Elf_Internal_Rela *rel,
			       Elf_Internal_Rela *relend,
			       bfd_vma offset, int type)
{
  while (rel < relend)
    {
      if (rel->r_offset == offset
	  && FUNC0 (rel->r_info) == (unsigned int) type)
	return rel;
      ++rel;
    }
  return NULL;
}