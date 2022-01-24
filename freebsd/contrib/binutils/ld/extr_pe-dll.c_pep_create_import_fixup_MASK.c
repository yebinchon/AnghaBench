#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_17__ ;
typedef  struct TYPE_20__   TYPE_16__ ;

/* Type definitions */
struct bfd_symbol {char* name; } ;
struct bfd_link_hash_entry {scalar_t__ type; } ;
struct TYPE_22__ {int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ bfd ;
struct TYPE_23__ {int /*<<< orphan*/  owner; } ;
typedef  TYPE_2__ asection ;
struct TYPE_24__ {int /*<<< orphan*/  address; struct bfd_symbol** sym_ptr_ptr; } ;
typedef  TYPE_3__ arelent ;
struct TYPE_25__ {int /*<<< orphan*/  flags; } ;
struct TYPE_21__ {int /*<<< orphan*/  text_read_only; } ;
struct TYPE_20__ {scalar_t__ pei386_runtime_pseudo_reloc; int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  WP_TEXT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_16__*) ; 
 scalar_t__ bfd_link_hash_defined ; 
 struct bfd_link_hash_entry* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_17__ config ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 TYPE_16__ link_info ; 
 TYPE_1__* FUNC5 (char const*,char*,char*,TYPE_5__*) ; 
 char* FUNC6 (TYPE_3__*) ; 
 TYPE_1__* FUNC7 (char const*,char*,int,TYPE_5__*) ; 
 TYPE_1__* FUNC8 (char const*,TYPE_5__*) ; 
 TYPE_5__* output_bfd ; 
 TYPE_1__* FUNC9 (TYPE_5__*) ; 
 scalar_t__ pe_dll_extra_pe_debug ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 scalar_t__ runtime_pseudo_relocs_created ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char const*) ; 

void
FUNC12 (arelent *rel, asection *s, int addend)
{
  char buf[300];
  struct bfd_symbol *sym = *rel->sym_ptr_ptr;
  struct bfd_link_hash_entry *name_thunk_sym;
  const char *name = sym->name;
  char *fixup_name = FUNC6 (rel);
  bfd *b;

  FUNC11 (buf, FUNC0 ("_nm_thnk_%s"), name);

  name_thunk_sym = FUNC3 (link_info.hash, buf, 0, 0, 1);

  if (!name_thunk_sym || name_thunk_sym->type != bfd_link_hash_defined)
    {
      bfd *b = FUNC8 (name, output_bfd);
      FUNC2 (b, b->filename, &link_info);

      /* If we ever use autoimport, we have to cast text section writable.  */
      config.text_read_only = FALSE;
      output_bfd->flags &= ~WP_TEXT;   
    }

  if (addend == 0 || link_info.pei386_runtime_pseudo_reloc)
    {
      extern char * pe_data_import_dll;
      char * dll_symname = pe_data_import_dll ? pe_data_import_dll : "unknown";

      b = FUNC5 (name, fixup_name, dll_symname, output_bfd);
      FUNC2 (b, b->filename, &link_info);
    }

  if (addend != 0)
    {
      if (link_info.pei386_runtime_pseudo_reloc)
	{
	  if (pe_dll_extra_pe_debug)
	    FUNC10 ("creating runtime pseudo-reloc entry for %s (addend=%d)\n",
		   fixup_name, addend);
	  b = FUNC7 (name, fixup_name, addend, output_bfd);
	  FUNC2 (b, b->filename, &link_info);

	  if (runtime_pseudo_relocs_created == 0)
	    {
	      b = FUNC9 (output_bfd);
	      FUNC2 (b, b->filename, &link_info);
	    }
	  runtime_pseudo_relocs_created++;
	}
      else
	{
	  FUNC4 (FUNC1("%C: variable '%T' can't be auto-imported. Please read the documentation for ld's --enable-auto-import for details.\n"),
		 s->owner, s, rel->address, sym->name);
	  FUNC4 ("%X");
	}
    }
}