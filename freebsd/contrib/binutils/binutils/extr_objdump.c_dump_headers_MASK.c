#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 int HAS_LOAD_PAGE ; 
 char* FUNC0 (char*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dump_section_header ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ wide_output ; 

__attribute__((used)) static void
FUNC4 (bfd *abfd)
{
  FUNC3 (FUNC0("Sections:\n"));

#ifndef BFD64
  FUNC3 (FUNC0("Idx Name          Size      VMA       LMA       File off  Algn"));
#else
  /* With BFD64, non-ELF returns -1 and wants always 64 bit addresses.  */
  if (bfd_get_arch_size (abfd) == 32)
    printf (_("Idx Name          Size      VMA       LMA       File off  Algn"));
  else
    printf (_("Idx Name          Size      VMA               LMA               File off  Algn"));
#endif

  if (wide_output)
    FUNC3 (FUNC0("  Flags"));
  if (abfd->flags & HAS_LOAD_PAGE)
    FUNC3 (FUNC0("  Pg"));
  FUNC3 ("\n");

  FUNC2 (abfd, dump_section_header, NULL);
}