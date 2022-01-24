#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ asection ;
struct TYPE_17__ {scalar_t__ check_section_addresses; scalar_t__ relax; scalar_t__ version_exports_section; } ;
struct TYPE_16__ {scalar_t__ text_read_only; } ;
struct TYPE_15__ {int /*<<< orphan*/ * name; } ;
struct TYPE_14__ {int relax_pass; int /*<<< orphan*/  relocatable; TYPE_5__* gc_sym_list; TYPE_1__* dynamic_list; } ;
struct TYPE_13__ {int /*<<< orphan*/  head; } ;
struct TYPE_11__ {int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SEC_READONLY ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_8__ command_line ; 
 TYPE_7__ config ; 
 int /*<<< orphan*/  current_target ; 
 int /*<<< orphan*/  default_target ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_5__ entry_symbol ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  ldlang_open_output ; 
 TYPE_5__* ldlang_undef_chain_list_head ; 
 TYPE_4__ link_info ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  output_bfd ; 
 int /*<<< orphan*/  FUNC30 () ; 
 TYPE_3__ statement_list ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 

void
FUNC32 (void)
{
  /* Finalize dynamic list.  */
  if (link_info.dynamic_list)
    FUNC13 (&link_info.dynamic_list->head);

  current_target = default_target;

  /* Open the output file.  */
  FUNC14 (ldlang_open_output);
  FUNC6 ();

  FUNC26 ();

  /* Add to the hash table all undefineds on the command line.  */
  FUNC17 ();

  if (!FUNC4 ())
    FUNC5 (FUNC0("%P%F: Failed to create hash table\n"));

  /* Create a bfd for each input file.  */
  current_target = default_target;
  FUNC29 (statement_list.head, FALSE);

  link_info.gc_sym_list = &entry_symbol;
  if (entry_symbol.name == NULL)
    link_info.gc_sym_list = ldlang_undef_chain_list_head;

  FUNC24 ();

  FUNC3 ();

  /* Make sure that we're not mixing architectures.  We call this
     after all the input files have been opened, but before we do any
     other processing, so that any operations merge_private_bfd_data
     does on the output file will be known during the rest of the
     link.  */
  FUNC7 ();

  /* Handle .exports instead of a version script if we're told to do so.  */
  if (command_line.version_exports_section)
    FUNC11 ();

  /* Build all sets based on the information gathered from the input
     files.  */
  FUNC22 ();

  /* Remove unreferenced sections if asked to.  */
  FUNC15 ();

  /* Size up the common data.  */
  FUNC9 ();

  /* Update wild statements.  */
  FUNC31 (statement_list.head);

  /* Run through the contours of the script and attach input sections
     to the correct output sections.  */
  FUNC28 (statement_list.head, NULL, NULL);

  /* Find any sections not attached explicitly and handle them.  */
  FUNC16 ();

  if (! link_info.relocatable)
    {
      asection *found;

      /* Merge SEC_MERGE sections.  This has to be done after GC of
	 sections, so that GCed sections are not merged, but before
	 assigning dynamic symbols, since removing whole input sections
	 is hard then.  */
      FUNC2 (output_bfd, &link_info);

      /* Look for a text section and set the readonly attribute in it.  */
      found = FUNC1 (output_bfd, ".text");

      if (found != NULL)
	{
	  if (config.text_read_only)
	    found->flags |= SEC_READONLY;
	  else
	    found->flags &= ~SEC_READONLY;
	}
    }

  /* Do anything special before sizing sections.  This is where ELF
     and other back-ends size dynamic sections.  */
  FUNC25 ();

  /* We must record the program headers before we try to fix the
     section positions, since they will affect SIZEOF_HEADERS.  */
  FUNC18 ();

  /* Size up the sections.  */
  FUNC21 (NULL, !command_line.relax);

  /* Now run around and relax if we can.  */
  if (command_line.relax)
    {
      /* We may need more than one relaxation pass.  */
      int i = link_info.relax_pass;

      /* The backend can use it to determine the current pass.  */
      link_info.relax_pass = 0;

      while (i--)
	{
	  FUNC30 ();
	  link_info.relax_pass++;
	}

      /* Final extra sizing to report errors.  */
      FUNC10 ();
      FUNC19 ();
      FUNC21 (NULL, TRUE);
    }

  /* See if anything special should be done now we know how big
     everything is.  */
  FUNC23 ();

  /* Fix any .startof. or .sizeof. symbols.  */
  FUNC20 ();

  /* Do all the assignments, now that we know the final resting places
     of all the symbols.  */

  FUNC10 ();

  FUNC27 ();

  /* Make sure that the section addresses make sense.  */
  if (! link_info.relocatable
      && command_line.check_section_addresses)
    FUNC8 ();

  FUNC12 ();
}