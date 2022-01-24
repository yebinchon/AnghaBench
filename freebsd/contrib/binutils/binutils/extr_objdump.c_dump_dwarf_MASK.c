#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int flags; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 int DYNAMIC ; 
 int EXEC_P ; 
 int HAS_RELOC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  byte_get ; 
 int /*<<< orphan*/  byte_get_big_endian ; 
 int /*<<< orphan*/  byte_get_little_endian ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  dump_dwarf_section ; 
 int eh_addr_size ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int is_relocatable ; 

__attribute__((used)) static void
FUNC7 (bfd *abfd)
{
  is_relocatable = ((abfd->flags & (HAS_RELOC | EXEC_P | DYNAMIC))
		    == HAS_RELOC);

  /* FIXME: bfd_get_arch_size may return -1.  We assume that 64bit
     targets will return 64.  */
  eh_addr_size = FUNC2 (abfd) == 64 ? 8 : 4;

  if (FUNC1 (abfd))
    byte_get = byte_get_big_endian;
  else if (FUNC3 (abfd))
    byte_get = byte_get_little_endian;
  else
    FUNC0 ();

  FUNC5 (abfd);

  FUNC4 (abfd, dump_dwarf_section, NULL);

  FUNC6 ();
}