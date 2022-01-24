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
typedef  int bfd_vma ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {int /*<<< orphan*/  (* elf_backend_fprintf_vma ) (int /*<<< orphan*/ *,void*,int) ;} ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ bfd_target_elf_flavour ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*,int) ; 

void
FUNC8 (bfd *abfd, void *stream, bfd_vma value)
{
  if (FUNC0 (abfd) == bfd_target_elf_flavour)
    FUNC4 (abfd)->elf_backend_fprintf_vma (abfd, stream, value);
#ifdef BFD64
  /* fprintf_vma() on a 64-bit enabled host will always print a 64-bit
     value, but really we want to display the address in the target's
     address size.  Since we do not have a field in the bfd structure
     to tell us this, we take a guess, based on the target's name.  */
  else if (strstr (bfd_get_target (abfd), "64") == NULL
	   && strcmp (bfd_get_target (abfd), "mmo") != 0)
    fprintf ((FILE *) stream, "%08lx", (unsigned long) (value & 0xffffffff));
#endif
  else
    FUNC3 ((FILE *) stream, value);
}