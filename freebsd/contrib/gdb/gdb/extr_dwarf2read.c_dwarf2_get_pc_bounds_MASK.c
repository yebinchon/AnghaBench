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
struct objfile {int /*<<< orphan*/ * obfd; } ;
struct comp_unit_head {unsigned int addr_size; int base_known; unsigned int base_address; } ;
struct dwarf2_cu {struct comp_unit_head header; struct objfile* objfile; } ;
struct die_info {int dummy; } ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;
typedef  unsigned int CORE_ADDR ;

/* Variables and functions */
 unsigned int FUNC0 (struct attribute*) ; 
 int /*<<< orphan*/  DW_AT_high_pc ; 
 int /*<<< orphan*/  DW_AT_low_pc ; 
 int /*<<< orphan*/  DW_AT_ranges ; 
 unsigned int FUNC1 (struct attribute*) ; 
 int HAS_RELOC ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct attribute* FUNC4 (struct die_info*,int /*<<< orphan*/ ,struct dwarf2_cu*) ; 
 char* dwarf_ranges_buffer ; 
 unsigned int dwarf_ranges_size ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *,char*,struct dwarf2_cu*,int*) ; 
 int /*<<< orphan*/  symfile_complaints ; 

__attribute__((used)) static int
FUNC6 (struct die_info *die, CORE_ADDR *lowpc,
		      CORE_ADDR *highpc, struct dwarf2_cu *cu)
{
  struct objfile *objfile = cu->objfile;
  struct comp_unit_head *cu_header = &cu->header;
  struct attribute *attr;
  bfd *obfd = objfile->obfd;
  CORE_ADDR low = 0;
  CORE_ADDR high = 0;
  int ret = 0;

  attr = FUNC4 (die, DW_AT_high_pc, cu);
  if (attr)
    {
      high = FUNC0 (attr);
      attr = FUNC4 (die, DW_AT_low_pc, cu);
      if (attr)
	low = FUNC0 (attr);
      else
	/* Found high w/o low attribute.  */
	return 0;

      /* Found consecutive range of addresses.  */
      ret = 1;
    }
  else
    {
      attr = FUNC4 (die, DW_AT_ranges, cu);
      if (attr != NULL)
	{
	  unsigned int addr_size = cu_header->addr_size;
	  CORE_ADDR mask = ~(~(CORE_ADDR)1 << (addr_size * 8 - 1));
	  /* Value of the DW_AT_ranges attribute is the offset in the
	     .debug_ranges section.  */
	  unsigned int offset = FUNC1 (attr);
	  /* Base address selection entry.  */
	  CORE_ADDR base;
	  int found_base;
	  int dummy;
	  char *buffer;
	  CORE_ADDR marker;
	  int low_set;
 
	  found_base = cu_header->base_known;
	  base = cu_header->base_address;

	  if (offset >= dwarf_ranges_size)
	    {
	      FUNC3 (&symfile_complaints,
	                 "Offset %d out of bounds for DW_AT_ranges attribute",
			 offset);
	      return 0;
	    }
	  buffer = dwarf_ranges_buffer + offset;

	  /* Read in the largest possible address.  */
	  marker = FUNC5 (obfd, buffer, cu, &dummy);
	  if ((marker & mask) == mask)
	    {
	      /* If we found the largest possible address, then
		 read the base address.  */
	      base = FUNC5 (obfd, buffer + addr_size, cu, &dummy);
	      buffer += 2 * addr_size;
	      offset += 2 * addr_size;
	      found_base = 1;
	    }

	  low_set = 0;

	  while (1)
	    {
	      CORE_ADDR range_beginning, range_end;

	      range_beginning = FUNC5 (obfd, buffer, cu, &dummy);
	      buffer += addr_size;
	      range_end = FUNC5 (obfd, buffer, cu, &dummy);
	      buffer += addr_size;
	      offset += 2 * addr_size;

	      /* An end of list marker is a pair of zero addresses.  */
	      if (range_beginning == 0 && range_end == 0)
		/* Found the end of list entry.  */
		break;

	      /* Each base address selection entry is a pair of 2 values.
		 The first is the largest possible address, the second is
		 the base address.  Check for a base address here.  */
	      if ((range_beginning & mask) == mask)
		{
		  /* If we found the largest possible address, then
		     read the base address.  */
		  base = FUNC5 (obfd, buffer + addr_size, cu, &dummy);
		  found_base = 1;
		  continue;
		}

	      if (!found_base)
		{
		  /* We have no valid base address for the ranges
		     data.  */
		  FUNC3 (&symfile_complaints,
			     "Invalid .debug_ranges data (no base address)");
		  return 0;
		}

	      range_beginning += base;
	      range_end += base;

	      /* FIXME: This is recording everything as a low-high
		 segment of consecutive addresses.  We should have a
		 data structure for discontiguous block ranges
		 instead.  */
	      if (! low_set)
		{
		  low = range_beginning;
		  high = range_end;
		  low_set = 1;
		}
	      else
		{
		  if (range_beginning < low)
		    low = range_beginning;
		  if (range_end > high)
		    high = range_end;
		}
	    }

	  if (! low_set)
	    /* If the first entry is an end-of-list marker, the range
	       describes an empty scope, i.e. no instructions.  */
	    return 0;

	  ret = -1;
	}
    }

  if (high < low)
    return 0;

  /* When using the GNU linker, .gnu.linkonce. sections are used to
     eliminate duplicate copies of functions and vtables and such.
     The linker will arbitrarily choose one and discard the others.
     The AT_*_pc values for such functions refer to local labels in
     these sections.  If the section from that file was discarded, the
     labels are not in the output, so the relocs get a value of 0.
     If this is a discarded function, mark the pc bounds as invalid,
     so that GDB will ignore it.  */
  if (low == 0 && (FUNC2 (obfd) & HAS_RELOC) == 0)
    return 0;

  *lowpc = low;
  *highpc = high;
  return ret;
}