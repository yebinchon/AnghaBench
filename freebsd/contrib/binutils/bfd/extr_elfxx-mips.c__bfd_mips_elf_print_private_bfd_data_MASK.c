#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {int e_flags; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EF_MIPS_32BITMODE ; 
 int EF_MIPS_ABI ; 
 int EF_MIPS_ARCH ; 
 int EF_MIPS_ARCH_ASE_M16 ; 
 int EF_MIPS_ARCH_ASE_MDMX ; 
 int EF_MIPS_CPIC ; 
 int EF_MIPS_NOREORDER ; 
 int EF_MIPS_PIC ; 
 int EF_MIPS_UCODE ; 
 int EF_MIPS_XGOT ; 
 int E_MIPS_ABI_EABI32 ; 
 int E_MIPS_ABI_EABI64 ; 
 int E_MIPS_ABI_O32 ; 
 int E_MIPS_ABI_O64 ; 
 int E_MIPS_ARCH_1 ; 
 int E_MIPS_ARCH_2 ; 
 int E_MIPS_ARCH_3 ; 
 int E_MIPS_ARCH_32 ; 
 int E_MIPS_ARCH_32R2 ; 
 int E_MIPS_ARCH_4 ; 
 int E_MIPS_ARCH_5 ; 
 int E_MIPS_ARCH_64 ; 
 int E_MIPS_ARCH_64R2 ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char,int /*<<< orphan*/ *) ; 

bfd_boolean
FUNC8 (bfd *abfd, void *ptr)
{
  FILE *file = ptr;

  FUNC2 (abfd != NULL && ptr != NULL);

  /* Print normal ELF private data.  */
  FUNC4 (abfd, ptr);

  /* xgettext:c-format */
  FUNC6 (file, FUNC3("private flags = %lx:"), FUNC5 (abfd)->e_flags);

  if ((FUNC5 (abfd)->e_flags & EF_MIPS_ABI) == E_MIPS_ABI_O32)
    FUNC6 (file, FUNC3(" [abi=O32]"));
  else if ((FUNC5 (abfd)->e_flags & EF_MIPS_ABI) == E_MIPS_ABI_O64)
    FUNC6 (file, FUNC3(" [abi=O64]"));
  else if ((FUNC5 (abfd)->e_flags & EF_MIPS_ABI) == E_MIPS_ABI_EABI32)
    FUNC6 (file, FUNC3(" [abi=EABI32]"));
  else if ((FUNC5 (abfd)->e_flags & EF_MIPS_ABI) == E_MIPS_ABI_EABI64)
    FUNC6 (file, FUNC3(" [abi=EABI64]"));
  else if ((FUNC5 (abfd)->e_flags & EF_MIPS_ABI))
    FUNC6 (file, FUNC3(" [abi unknown]"));
  else if (FUNC1 (abfd))
    FUNC6 (file, FUNC3(" [abi=N32]"));
  else if (FUNC0 (abfd))
    FUNC6 (file, FUNC3(" [abi=64]"));
  else
    FUNC6 (file, FUNC3(" [no abi set]"));

  if ((FUNC5 (abfd)->e_flags & EF_MIPS_ARCH) == E_MIPS_ARCH_1)
    FUNC6 (file, " [mips1]");
  else if ((FUNC5 (abfd)->e_flags & EF_MIPS_ARCH) == E_MIPS_ARCH_2)
    FUNC6 (file, " [mips2]");
  else if ((FUNC5 (abfd)->e_flags & EF_MIPS_ARCH) == E_MIPS_ARCH_3)
    FUNC6 (file, " [mips3]");
  else if ((FUNC5 (abfd)->e_flags & EF_MIPS_ARCH) == E_MIPS_ARCH_4)
    FUNC6 (file, " [mips4]");
  else if ((FUNC5 (abfd)->e_flags & EF_MIPS_ARCH) == E_MIPS_ARCH_5)
    FUNC6 (file, " [mips5]");
  else if ((FUNC5 (abfd)->e_flags & EF_MIPS_ARCH) == E_MIPS_ARCH_32)
    FUNC6 (file, " [mips32]");
  else if ((FUNC5 (abfd)->e_flags & EF_MIPS_ARCH) == E_MIPS_ARCH_64)
    FUNC6 (file, " [mips64]");
  else if ((FUNC5 (abfd)->e_flags & EF_MIPS_ARCH) == E_MIPS_ARCH_32R2)
    FUNC6 (file, " [mips32r2]");
  else if ((FUNC5 (abfd)->e_flags & EF_MIPS_ARCH) == E_MIPS_ARCH_64R2)
    FUNC6 (file, " [mips64r2]");
  else
    FUNC6 (file, FUNC3(" [unknown ISA]"));

  if (FUNC5 (abfd)->e_flags & EF_MIPS_ARCH_ASE_MDMX)
    FUNC6 (file, " [mdmx]");

  if (FUNC5 (abfd)->e_flags & EF_MIPS_ARCH_ASE_M16)
    FUNC6 (file, " [mips16]");

  if (FUNC5 (abfd)->e_flags & EF_MIPS_32BITMODE)
    FUNC6 (file, " [32bitmode]");
  else
    FUNC6 (file, FUNC3(" [not 32bitmode]"));

  if (FUNC5 (abfd)->e_flags & EF_MIPS_NOREORDER)
    FUNC6 (file, " [noreorder]");

  if (FUNC5 (abfd)->e_flags & EF_MIPS_PIC)
    FUNC6 (file, " [PIC]");

  if (FUNC5 (abfd)->e_flags & EF_MIPS_CPIC)
    FUNC6 (file, " [CPIC]");

  if (FUNC5 (abfd)->e_flags & EF_MIPS_XGOT)
    FUNC6 (file, " [XGOT]");

  if (FUNC5 (abfd)->e_flags & EF_MIPS_UCODE)
    FUNC6 (file, " [UCODE]");

  FUNC7 ('\n', file);

  return TRUE;
}