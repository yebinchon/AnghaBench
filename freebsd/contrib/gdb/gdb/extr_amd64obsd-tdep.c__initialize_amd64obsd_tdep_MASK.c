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
 scalar_t__ AMD64_NUM_GREGS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GDB_OSABI_NETBSD_AOUT ; 
 int /*<<< orphan*/  GDB_OSABI_OPENBSD_ELF ; 
 int /*<<< orphan*/  amd64obsd_init_abi ; 
 int /*<<< orphan*/  amd64obsd_r_reg_offset ; 
 int /*<<< orphan*/  bfd_arch_i386 ; 
 int /*<<< orphan*/  bfd_mach_x86_64 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3 (void)
{
  /* The OpenBSD/amd64 native dependent code makes this assumption.  */
  FUNC1 (FUNC0 (amd64obsd_r_reg_offset) == AMD64_NUM_GREGS);

  FUNC2 (bfd_arch_i386, bfd_mach_x86_64,
			  GDB_OSABI_OPENBSD_ELF, amd64obsd_init_abi);

  /* OpenBSD uses traditional (a.out) NetBSD-style core dumps.  */
  FUNC2 (bfd_arch_i386, bfd_mach_x86_64,
			  GDB_OSABI_NETBSD_AOUT, amd64obsd_init_abi);
}