#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dwarf2_debug {int /*<<< orphan*/  dwarf_ranges_buffer; int /*<<< orphan*/  syms; int /*<<< orphan*/  dwarf_ranges_size; } ;
struct comp_unit {int /*<<< orphan*/ * abfd; struct dwarf2_debug* stash; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_4__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ asection ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfd_error_bad_value ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC6 (struct comp_unit *unit)
{
  struct dwarf2_debug *stash = unit->stash;
  if (! stash->dwarf_ranges_buffer)
    {
      bfd *abfd = unit->abfd;
      asection *msec;

      msec = FUNC2 (abfd, ".debug_ranges");
      if (! msec)
	{
	  FUNC1) (FUNC0("Dwarf Error: Can't find .debug_ranges section."));
	  FUNC3 (bfd_error_bad_value);
	  return FALSE;
	}

      stash->dwarf_ranges_size = msec->size;
      stash->dwarf_ranges_buffer
	= FUNC4 (abfd, msec, NULL,
						     stash->syms);
      if (! stash->dwarf_ranges_buffer)
	return FALSE;
    }
  return TRUE;
}