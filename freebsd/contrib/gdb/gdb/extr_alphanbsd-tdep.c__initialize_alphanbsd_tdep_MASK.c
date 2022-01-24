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
 int /*<<< orphan*/  GDB_OSABI_OPENBSD_ELF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  alphanbsd_core_fns ; 
 int /*<<< orphan*/  alphanbsd_elfcore_fns ; 
 int /*<<< orphan*/  alphanbsd_init_abi ; 
 int /*<<< orphan*/  bfd_arch_alpha ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2 (void)
{
  FUNC1 (bfd_arch_alpha, 0, GDB_OSABI_NETBSD_ELF,
                          alphanbsd_init_abi);
  FUNC1 (bfd_arch_alpha, 0, GDB_OSABI_OPENBSD_ELF,
                          alphanbsd_init_abi);

  FUNC0 (&alphanbsd_core_fns);
  FUNC0 (&alphanbsd_elfcore_fns);
}