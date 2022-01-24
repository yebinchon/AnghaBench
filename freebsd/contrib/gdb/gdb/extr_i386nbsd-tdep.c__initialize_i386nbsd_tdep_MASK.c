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
 int /*<<< orphan*/  bfd_arch_i386 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i386nbsdaout_init_abi ; 
 int /*<<< orphan*/  i386nbsdelf_init_abi ; 

void
FUNC1 (void)
{
  FUNC0 (bfd_arch_i386, 0, GDB_OSABI_NETBSD_AOUT,
			  i386nbsdaout_init_abi);
  FUNC0 (bfd_arch_i386, 0, GDB_OSABI_NETBSD_ELF,
			  i386nbsdelf_init_abi);
}