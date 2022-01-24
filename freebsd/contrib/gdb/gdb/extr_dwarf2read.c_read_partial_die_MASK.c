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
struct partial_die_info {int offset; unsigned int abbrev; scalar_t__ lowpc; scalar_t__ highpc; int has_type; char* sibling; int has_pc_info; void* is_external; int /*<<< orphan*/ * name; void* is_declaration; void* language; int /*<<< orphan*/  locdesc; int /*<<< orphan*/  has_children; int /*<<< orphan*/  tag; } ;
struct dwarf2_cu {int dummy; } ;
struct attribute {int name; int /*<<< orphan*/  form; } ;
struct abbrev_info {unsigned int num_attrs; int /*<<< orphan*/ * attrs; int /*<<< orphan*/  has_children; int /*<<< orphan*/  tag; } ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 void* FUNC0 (struct attribute*) ; 
#define  DW_AT_MIPS_linkage_name 139 
#define  DW_AT_abstract_origin 138 
#define  DW_AT_declaration 137 
#define  DW_AT_external 136 
#define  DW_AT_high_pc 135 
#define  DW_AT_language 134 
#define  DW_AT_location 133 
#define  DW_AT_low_pc 132 
#define  DW_AT_name 131 
#define  DW_AT_sibling 130 
#define  DW_AT_specification 129 
#define  DW_AT_type 128 
 int /*<<< orphan*/  FUNC1 (struct attribute*) ; 
 int /*<<< orphan*/  DW_FORM_data4 ; 
 int /*<<< orphan*/  DW_FORM_data8 ; 
 int /*<<< orphan*/  DW_FORM_ref_addr ; 
 void* FUNC2 (struct attribute*) ; 
 void* FUNC3 (struct attribute*) ; 
 int HAS_RELOC ; 
 int /*<<< orphan*/  FUNC4 (struct attribute*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (struct attribute*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 struct abbrev_info* FUNC11 (unsigned int,struct dwarf2_cu*) ; 
 char* dwarf_info_buffer ; 
 int /*<<< orphan*/  FUNC12 (char*,unsigned int,char*) ; 
 char* FUNC13 (struct attribute*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,struct dwarf2_cu*) ; 
 unsigned int FUNC14 (int /*<<< orphan*/ *,char*,unsigned int*) ; 
 int /*<<< orphan*/  symfile_complaints ; 
 struct partial_die_info zeroed_partial_die ; 

__attribute__((used)) static char *
FUNC15 (struct partial_die_info *part_die, bfd *abfd,
		  char *info_ptr, struct dwarf2_cu *cu)
{
  unsigned int abbrev_number, bytes_read, i;
  struct abbrev_info *abbrev;
  struct attribute attr;
  struct attribute spec_attr;
  int found_spec_attr = 0;
  int has_low_pc_attr = 0;
  int has_high_pc_attr = 0;

  *part_die = zeroed_partial_die;
  abbrev_number = FUNC14 (abfd, info_ptr, &bytes_read);
  info_ptr += bytes_read;
  if (!abbrev_number)
    return info_ptr;

  abbrev = FUNC11 (abbrev_number, cu);
  if (!abbrev)
    {
      FUNC12 ("Dwarf Error: Could not find abbrev number %d [in module %s]", abbrev_number,
		      FUNC6 (abfd));
    }
  part_die->offset = info_ptr - dwarf_info_buffer;
  part_die->tag = abbrev->tag;
  part_die->has_children = abbrev->has_children;
  part_die->abbrev = abbrev_number;

  for (i = 0; i < abbrev->num_attrs; ++i)
    {
      info_ptr = FUNC13 (&attr, &abbrev->attrs[i], abfd, info_ptr, cu);

      /* Store the data if it is of an attribute we want to keep in a
         partial symbol table.  */
      switch (attr.name)
	{
	case DW_AT_name:

	  /* Prefer DW_AT_MIPS_linkage_name over DW_AT_name.  */
	  if (part_die->name == NULL)
	    part_die->name = FUNC2 (&attr);
	  break;
	case DW_AT_MIPS_linkage_name:
	  part_die->name = FUNC2 (&attr);
	  break;
	case DW_AT_low_pc:
	  has_low_pc_attr = 1;
	  part_die->lowpc = FUNC0 (&attr);
	  break;
	case DW_AT_high_pc:
	  has_high_pc_attr = 1;
	  part_die->highpc = FUNC0 (&attr);
	  break;
	case DW_AT_location:
          /* Support the .debug_loc offsets */
          if (FUNC4 (&attr))
            {
	       part_die->locdesc = FUNC1 (&attr);
            }
          else if (attr.form == DW_FORM_data4 || attr.form == DW_FORM_data8)
            {
	      FUNC8 ();
            }
          else
            {
	      FUNC10 ("DW_AT_location",
						     "partial symbol information");
            }
	  break;
	case DW_AT_language:
	  part_die->language = FUNC3 (&attr);
	  break;
	case DW_AT_external:
	  part_die->is_external = FUNC3 (&attr);
	  break;
	case DW_AT_declaration:
	  part_die->is_declaration = FUNC3 (&attr);
	  break;
	case DW_AT_type:
	  part_die->has_type = 1;
	  break;
	case DW_AT_abstract_origin:
	case DW_AT_specification:
	  found_spec_attr = 1;
	  spec_attr = attr;
	  break;
	case DW_AT_sibling:
	  /* Ignore absolute siblings, they might point outside of
	     the current compile unit.  */
	  if (attr.form == DW_FORM_ref_addr)
	    FUNC7 (&symfile_complaints, "ignoring absolute DW_AT_sibling");
	  else
	    part_die->sibling =
	      dwarf_info_buffer + FUNC9 (&attr, cu);
	  break;
	default:
	  break;
	}
    }

  /* If we found a reference attribute and the die has no name, try
     to find a name in the referred to die.  */

  if (found_spec_attr && part_die->name == NULL)
    {
      struct partial_die_info spec_die;
      char *spec_ptr;

      spec_ptr = dwarf_info_buffer
	+ FUNC9 (&spec_attr, cu);
      FUNC15 (&spec_die, abfd, spec_ptr, cu);
      if (spec_die.name)
	{
	  part_die->name = spec_die.name;

	  /* Copy DW_AT_external attribute if it is set.  */
	  if (spec_die.is_external)
	    part_die->is_external = spec_die.is_external;
	}
    }

  /* When using the GNU linker, .gnu.linkonce. sections are used to
     eliminate duplicate copies of functions and vtables and such.
     The linker will arbitrarily choose one and discard the others.
     The AT_*_pc values for such functions refer to local labels in
     these sections.  If the section from that file was discarded, the
     labels are not in the output, so the relocs get a value of 0.
     If this is a discarded function, mark the pc bounds as invalid,
     so that GDB will ignore it.  */
  if (has_low_pc_attr && has_high_pc_attr
      && part_die->lowpc < part_die->highpc
      && (part_die->lowpc != 0
	  || (FUNC5 (abfd) & HAS_RELOC)))
    part_die->has_pc_info = 1;
  return info_ptr;
}