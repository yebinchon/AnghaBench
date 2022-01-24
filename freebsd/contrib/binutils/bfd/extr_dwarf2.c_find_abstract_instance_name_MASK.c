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
struct comp_unit {int /*<<< orphan*/  abbrevs; int /*<<< orphan*/ * info_ptr_unit; int /*<<< orphan*/ * abfd; } ;
struct TYPE_2__ {char* str; int val; } ;
struct attribute {int name; TYPE_1__ u; } ;
struct abbrev_info {unsigned int num_attrs; int /*<<< orphan*/ * attrs; } ;
typedef  int bfd_uint64_t ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
#define  DW_AT_MIPS_linkage_name 130 
#define  DW_AT_name 129 
#define  DW_AT_specification 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  bfd_error_bad_value ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct abbrev_info* FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct attribute*,int /*<<< orphan*/ *,struct comp_unit*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static char *
FUNC7 (struct comp_unit *unit, bfd_uint64_t die_ref)
{
  bfd *abfd = unit->abfd;
  bfd_byte *info_ptr;
  unsigned int abbrev_number, bytes_read, i;
  struct abbrev_info *abbrev;
  struct attribute attr;
  char *name = 0;

  info_ptr = unit->info_ptr_unit + die_ref;
  abbrev_number = FUNC5 (abfd, info_ptr, &bytes_read);
  info_ptr += bytes_read;

  if (abbrev_number)
    {
      abbrev = FUNC3 (abbrev_number, unit->abbrevs);
      if (! abbrev)
	{
	  FUNC1) (FUNC0("Dwarf Error: Could not find abbrev number %u."),
				 abbrev_number);
	  FUNC2 (bfd_error_bad_value);
	}
      else
	{
	  for (i = 0; i < abbrev->num_attrs; ++i)
	    {
	      info_ptr = FUNC4 (&attr, &abbrev->attrs[i], unit, info_ptr);
	      switch (attr.name)
		{
		case DW_AT_name:
		  /* Prefer DW_AT_MIPS_linkage_name over DW_AT_name.  */
		  if (name == NULL)
		    name = attr.u.str;
		  break;
		case DW_AT_specification:
		  name = FUNC7 (unit, attr.u.val);
		  break;
		case DW_AT_MIPS_linkage_name:
		  name = attr.u.str;
		  break;
		default:
		  break;
		}
	    }
	}
    }
  return (name);
}