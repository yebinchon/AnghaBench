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
 int /*<<< orphan*/  GDB_OSABI_LYNXOS ; 
 int /*<<< orphan*/  bfd_arch_i386 ; 
 int /*<<< orphan*/  bfd_target_coff_flavour ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i386lynx_coff_osabi_sniffer ; 
 int /*<<< orphan*/  i386lynx_init_abi ; 

void
FUNC2 (void)
{
  FUNC1 (bfd_arch_i386, bfd_target_coff_flavour,
				  i386lynx_coff_osabi_sniffer);

  FUNC0 (bfd_arch_i386, 0, GDB_OSABI_LYNXOS,
			  i386lynx_init_abi);
}