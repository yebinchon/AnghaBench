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
 int /*<<< orphan*/  GDB_OSABI_NETBSD_AOUT ; 
 int /*<<< orphan*/  GDB_OSABI_NETBSD_ELF ; 
 int /*<<< orphan*/  arm_netbsd_aout_init_abi ; 
 int /*<<< orphan*/  arm_netbsd_aout_osabi_sniffer ; 
 int /*<<< orphan*/  arm_netbsd_elf_init_abi ; 
 int /*<<< orphan*/  bfd_arch_arm ; 
 int /*<<< orphan*/  bfd_target_aout_flavour ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2 (void)
{
  FUNC1 (bfd_arch_arm, bfd_target_aout_flavour,
				  arm_netbsd_aout_osabi_sniffer);

  FUNC0 (bfd_arch_arm, 0, GDB_OSABI_NETBSD_AOUT,
                          arm_netbsd_aout_init_abi);
  FUNC0 (bfd_arch_arm, 0, GDB_OSABI_NETBSD_ELF,
                          arm_netbsd_elf_init_abi);
}