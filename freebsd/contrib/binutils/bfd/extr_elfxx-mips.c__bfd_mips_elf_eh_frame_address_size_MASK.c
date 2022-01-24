#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_8__ {scalar_t__ reloc_count; } ;
typedef  TYPE_2__ asection ;
struct TYPE_10__ {scalar_t__* e_ident; int e_flags; } ;
struct TYPE_9__ {TYPE_1__* relocs; } ;
struct TYPE_7__ {int /*<<< orphan*/  r_info; } ;

/* Variables and functions */
 int EF_MIPS_ABI ; 
 size_t EI_CLASS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ELFCLASS64 ; 
 int E_MIPS_ABI_EABI64 ; 
 scalar_t__ R_MIPS_64 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (TYPE_2__*) ; 

unsigned int
FUNC4 (bfd *abfd, asection *sec)
{
  if (FUNC2 (abfd)->e_ident[EI_CLASS] == ELFCLASS64)
    return 8;
  if ((FUNC2 (abfd)->e_flags & EF_MIPS_ABI) == E_MIPS_ABI_EABI64)
    {
      bfd_boolean long32_p, long64_p;

      long32_p = FUNC1 (abfd, ".gcc_compiled_long32") != 0;
      long64_p = FUNC1 (abfd, ".gcc_compiled_long64") != 0;
      if (long32_p && long64_p)
	return 0;
      if (long32_p)
	return 4;
      if (long64_p)
	return 8;

      if (sec->reloc_count > 0
	  && FUNC3 (sec)->relocs != NULL
	  && (FUNC0 (FUNC3 (sec)->relocs[0].r_info)
	      == R_MIPS_64))
	return 8;

      return 0;
    }
  return 4;
}