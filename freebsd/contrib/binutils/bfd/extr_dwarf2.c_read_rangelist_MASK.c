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
struct comp_unit {unsigned long base_address; int addr_size; int /*<<< orphan*/  abfd; TYPE_1__* stash; } ;
struct arange {int dummy; } ;
typedef  unsigned long bfd_vma ;
typedef  int bfd_uint64_t ;
typedef  int /*<<< orphan*/  bfd_byte ;
struct TYPE_2__ {int /*<<< orphan*/ * dwarf_ranges_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct arange*,unsigned long,unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct comp_unit*) ; 

__attribute__((used)) static void
FUNC4 (struct comp_unit *unit, struct arange *arange, bfd_uint64_t offset)
{
  bfd_byte *ranges_ptr;
  bfd_vma base_address = unit->base_address;

  if (! unit->stash->dwarf_ranges_buffer)
    {
      if (! FUNC3 (unit))
	return;
    }
  ranges_ptr = unit->stash->dwarf_ranges_buffer + offset;

  for (;;)
    {
      bfd_vma low_pc;
      bfd_vma high_pc;

      if (unit->addr_size == 4)
	{
	  low_pc = FUNC1 (unit->abfd, ranges_ptr);
	  ranges_ptr += 4;
	  high_pc = FUNC1 (unit->abfd, ranges_ptr);
	  ranges_ptr += 4;
	}
      else
	{
	  low_pc = FUNC2 (unit->abfd, ranges_ptr);
	  ranges_ptr += 8;
	  high_pc = FUNC2 (unit->abfd, ranges_ptr);
	  ranges_ptr += 8;
	}
      if (low_pc == 0 && high_pc == 0)
	break;
      if (low_pc == -1UL && high_pc != -1UL)
	base_address = high_pc;
      else
	FUNC0 (unit->abfd, arange, base_address + low_pc, base_address + high_pc);
    }
}