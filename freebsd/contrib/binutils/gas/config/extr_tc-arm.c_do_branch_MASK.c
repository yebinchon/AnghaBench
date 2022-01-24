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

/* Variables and functions */
 int /*<<< orphan*/  BFD_RELOC_ARM_PCREL_BRANCH ; 
 int /*<<< orphan*/  BFD_RELOC_ARM_PCREL_JUMP ; 
 scalar_t__ EF_ARM_EABI_VER4 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  meabi_flags ; 

__attribute__((used)) static void
FUNC2 (void)
{
#ifdef OBJ_ELF
  if (EF_ARM_EABI_VERSION (meabi_flags) >= EF_ARM_EABI_VER4)
    encode_branch (BFD_RELOC_ARM_PCREL_JUMP);
  else
#endif
    FUNC1 (BFD_RELOC_ARM_PCREL_BRANCH);
}