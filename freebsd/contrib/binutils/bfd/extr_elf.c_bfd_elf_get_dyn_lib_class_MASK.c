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
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ bfd_object ; 
 scalar_t__ bfd_target_elf_flavour ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3 (bfd *abfd)
{
  int lib_class;
  if (FUNC0 (abfd) == bfd_target_elf_flavour
      && FUNC1 (abfd) == bfd_object)
    lib_class = FUNC2 (abfd);
  else
    lib_class = 0;
  return lib_class;
}