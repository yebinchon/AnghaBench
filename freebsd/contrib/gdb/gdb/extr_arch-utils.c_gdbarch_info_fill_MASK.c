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
struct gdbarch_info {scalar_t__ byte_order; scalar_t__ osabi; int /*<<< orphan*/ * bfd_arch_info; int /*<<< orphan*/ * abfd; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 scalar_t__ BFD_ENDIAN_BIG ; 
 scalar_t__ BFD_ENDIAN_LITTLE ; 
 scalar_t__ BFD_ENDIAN_UNKNOWN ; 
 scalar_t__ GDB_OSABI_UNINITIALIZED ; 
 scalar_t__ bfd_arch_obscure ; 
 scalar_t__ bfd_arch_unknown ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct gdbarch*) ; 
 void* FUNC6 (struct gdbarch*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct gdbarch*) ; 
 int /*<<< orphan*/  target_architecture_auto ; 
 int /*<<< orphan*/  target_byte_order_auto ; 

void
FUNC9 (struct gdbarch *gdbarch, struct gdbarch_info *info)
{
  /* "(gdb) set architecture ...".  */
  if (info->bfd_arch_info == NULL
      && !target_architecture_auto
      && gdbarch != NULL)
    info->bfd_arch_info = FUNC5 (gdbarch);
  if (info->bfd_arch_info == NULL
      && info->abfd != NULL
      && FUNC1 (info->abfd) != bfd_arch_unknown
      && FUNC1 (info->abfd) != bfd_arch_obscure)
    info->bfd_arch_info = FUNC2 (info->abfd);
  if (info->bfd_arch_info == NULL
      && gdbarch != NULL)
    info->bfd_arch_info = FUNC5 (gdbarch);

  /* "(gdb) set byte-order ...".  */
  if (info->byte_order == BFD_ENDIAN_UNKNOWN
      && !target_byte_order_auto
      && gdbarch != NULL)
    info->byte_order = FUNC6 (gdbarch);
  /* From the INFO struct.  */
  if (info->byte_order == BFD_ENDIAN_UNKNOWN
      && info->abfd != NULL)
    info->byte_order = (FUNC0 (info->abfd) ? BFD_ENDIAN_BIG
		       : FUNC3 (info->abfd) ? BFD_ENDIAN_LITTLE
		       : BFD_ENDIAN_UNKNOWN);
  /* From the current target.  */
  if (info->byte_order == BFD_ENDIAN_UNKNOWN
      && gdbarch != NULL)
    info->byte_order = FUNC6 (gdbarch);

  /* "(gdb) set osabi ...".  Handled by gdbarch_lookup_osabi.  */
  if (info->osabi == GDB_OSABI_UNINITIALIZED)
    info->osabi = FUNC7 (info->abfd);
  if (info->osabi == GDB_OSABI_UNINITIALIZED
      && gdbarch != NULL)
    info->osabi = FUNC8 (gdbarch);

  /* Must have at least filled in the architecture.  */
  FUNC4 (info->bfd_arch_info != NULL);
}