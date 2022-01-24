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
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_3__ {scalar_t__ st_shndx; } ;
typedef  TYPE_1__ Elf_Internal_Sym ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ SHN_HIRESERVE ; 
 int /*<<< orphan*/  SHN_LORESERVE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfd_error_nonrepresentable_section ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC5 (bfd *abfd, Elf_Internal_Sym *sym)
{
  if (sym->st_shndx > SHN_HIRESERVE)
    {
      /* The gABI doesn't support dynamic symbols in output sections
         beyond 64k.  */
      FUNC1)
	(FUNC0("%B: Too many sections: %d (>= %d)"),
	 abfd, FUNC2 (abfd), SHN_LORESERVE);
      FUNC3 (bfd_error_nonrepresentable_section);
      return FALSE;
    }
  return TRUE;
}