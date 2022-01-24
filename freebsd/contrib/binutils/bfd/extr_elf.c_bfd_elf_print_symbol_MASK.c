#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct elf_backend_data {char* (* elf_backend_print_symbol_all ) (int /*<<< orphan*/ *,void*,TYPE_4__*) ;} ;
struct TYPE_14__ {unsigned char st_other; int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_value; } ;
struct TYPE_15__ {unsigned int version; TYPE_2__ internal_elf_sym; } ;
typedef  TYPE_3__ elf_symbol_type ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int bfd_print_symbol_type ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_16__ {char const* name; TYPE_10__* section; scalar_t__ flags; int /*<<< orphan*/  value; } ;
typedef  TYPE_4__ asymbol ;
struct TYPE_19__ {unsigned int cverdefs; TYPE_5__* verref; TYPE_1__* verdef; int /*<<< orphan*/  dynverref_section; int /*<<< orphan*/  dynverdef_section; int /*<<< orphan*/  dynversym_section; } ;
struct TYPE_18__ {unsigned int vna_other; char* vna_nodename; struct TYPE_18__* vna_nextptr; } ;
struct TYPE_17__ {TYPE_6__* vn_auxptr; struct TYPE_17__* vn_nextref; } ;
struct TYPE_13__ {char* vd_nodename; } ;
struct TYPE_12__ {char* name; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_5__ Elf_Internal_Verneed ;
typedef  TYPE_6__ Elf_Internal_Vernaux ;

/* Variables and functions */
#define  STV_HIDDEN 133 
#define  STV_INTERNAL 132 
#define  STV_PROTECTED 131 
 int VERSYM_HIDDEN ; 
 unsigned int VERSYM_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_10__*) ; 
#define  bfd_print_symbol_all 130 
#define  bfd_print_symbol_more 129 
#define  bfd_print_symbol_name 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_8__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 struct elf_backend_data* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,void*,TYPE_4__*) ; 

void
FUNC9 (bfd *abfd,
		      void *filep,
		      asymbol *symbol,
		      bfd_print_symbol_type how)
{
  FILE *file = filep;
  switch (how)
    {
    case bfd_print_symbol_name:
      FUNC4 (file, "%s", symbol->name);
      break;
    case bfd_print_symbol_more:
      FUNC4 (file, "elf ");
      FUNC0 (abfd, file, symbol->value);
      FUNC4 (file, " %lx", (long) symbol->flags);
      break;
    case bfd_print_symbol_all:
      {
	const char *section_name;
	const char *name = NULL;
	const struct elf_backend_data *bed;
	unsigned char st_other;
	bfd_vma val;

	section_name = symbol->section ? symbol->section->name : "(*none*)";

	bed = FUNC5 (abfd);
	if (bed->elf_backend_print_symbol_all)
	  name = (*bed->elf_backend_print_symbol_all) (abfd, filep, symbol);

	if (name == NULL)
	  {
	    name = symbol->name;
	    FUNC2 (abfd, file, symbol);
	  }

	FUNC4 (file, " %s\t", section_name);
	/* Print the "other" value for a symbol.  For common symbols,
	   we've already printed the size; now print the alignment.
	   For other symbols, we have no specified alignment, and
	   we've printed the address; now print the size.  */
	if (FUNC1 (symbol->section))
	  val = ((elf_symbol_type *) symbol)->internal_elf_sym.st_value;
	else
	  val = ((elf_symbol_type *) symbol)->internal_elf_sym.st_size;
	FUNC0 (abfd, file, val);

	/* If we have version information, print it.  */
	if (FUNC3 (abfd)->dynversym_section != 0
	    && (FUNC3 (abfd)->dynverdef_section != 0
		|| FUNC3 (abfd)->dynverref_section != 0))
	  {
	    unsigned int vernum;
	    const char *version_string;

	    vernum = ((elf_symbol_type *) symbol)->version & VERSYM_VERSION;

	    if (vernum == 0)
	      version_string = "";
	    else if (vernum == 1)
	      version_string = "Base";
	    else if (vernum <= FUNC3 (abfd)->cverdefs)
	      version_string =
		FUNC3 (abfd)->verdef[vernum - 1].vd_nodename;
	    else
	      {
		Elf_Internal_Verneed *t;

		version_string = "";
		for (t = FUNC3 (abfd)->verref;
		     t != NULL;
		     t = t->vn_nextref)
		  {
		    Elf_Internal_Vernaux *a;

		    for (a = t->vn_auxptr; a != NULL; a = a->vna_nextptr)
		      {
			if (a->vna_other == vernum)
			  {
			    version_string = a->vna_nodename;
			    break;
			  }
		      }
		  }
	      }

	    if ((((elf_symbol_type *) symbol)->version & VERSYM_HIDDEN) == 0)
	      FUNC4 (file, "  %-11s", version_string);
	    else
	      {
		int i;

		FUNC4 (file, " (%s)", version_string);
		for (i = 10 - FUNC7 (version_string); i > 0; --i)
		  FUNC6 (' ', file);
	      }
	  }

	/* If the st_other field is not zero, print it.  */
	st_other = ((elf_symbol_type *) symbol)->internal_elf_sym.st_other;

	switch (st_other)
	  {
	  case 0: break;
	  case STV_INTERNAL:  FUNC4 (file, " .internal");  break;
	  case STV_HIDDEN:    FUNC4 (file, " .hidden");    break;
	  case STV_PROTECTED: FUNC4 (file, " .protected"); break;
	  default:
	    /* Some other non-defined flags are also present, so print
	       everything hex.  */
	    FUNC4 (file, " 0x%02x", (unsigned int) st_other);
	  }

	FUNC4 (file, " %s", name);
      }
      break;
    }
}