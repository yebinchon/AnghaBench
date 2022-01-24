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
 int /*<<< orphan*/  GDB_OSABI_NETBSD_ELF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfd_arch_powerpc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ppcnbsd_core_fns ; 
 int /*<<< orphan*/  ppcnbsd_elfcore_fns ; 
 int /*<<< orphan*/  ppcnbsd_init_abi ; 

void
FUNC2 (void)
{
  FUNC1 (bfd_arch_powerpc, 0, GDB_OSABI_NETBSD_ELF,
			  ppcnbsd_init_abi);

  FUNC0 (&ppcnbsd_core_fns);
  FUNC0 (&ppcnbsd_elfcore_fns);
}