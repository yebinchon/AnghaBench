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
 int /*<<< orphan*/  GDB_OSABI_SOLARIS ; 
 int /*<<< orphan*/  bfd_arch_i386 ; 
 int /*<<< orphan*/  bfd_target_elf_flavour ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i386_sol2_init_abi ; 
 int /*<<< orphan*/  i386_sol2_osabi_sniffer ; 

void
FUNC2 (void)
{
  /* Register an ELF OS ABI sniffer for Solaris 2 binaries.  */
  FUNC1 (bfd_arch_i386, bfd_target_elf_flavour,
				  i386_sol2_osabi_sniffer);

  FUNC0 (bfd_arch_i386, 0, GDB_OSABI_SOLARIS,
			  i386_sol2_init_abi);
}