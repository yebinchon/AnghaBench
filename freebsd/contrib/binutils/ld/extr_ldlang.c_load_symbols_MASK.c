#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lang_statement_list_type ;
struct TYPE_15__ {int loaded; char* the_bfd; int sysrooted; int as_needed; int add_needed; int /*<<< orphan*/  whole_archive; int /*<<< orphan*/  dynamic; int /*<<< orphan*/  filename; } ;
typedef  TYPE_2__ lang_input_statement_type ;
typedef  scalar_t__ bfd_error_type ;
typedef  int bfd_boolean ;
typedef  char bfd ;
struct TYPE_16__ {TYPE_1__* callbacks; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* add_archive_element ) (TYPE_3__*,char*,char*) ;} ;
struct TYPE_13__ {int /*<<< orphan*/  dynamic_link; } ;

/* Variables and functions */
 void* FALSE ; 
 int TRUE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int add_needed ; 
 int as_needed ; 
#define  bfd_archive 129 
 int /*<<< orphan*/  FUNC2 (char*,int const) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char***) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ bfd_error_file_ambiguously_recognized ; 
 scalar_t__ bfd_error_file_not_recognized ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,TYPE_3__*) ; 
#define  bfd_object 128 
 char* FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 TYPE_11__ config ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  input_script ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 
 scalar_t__ FUNC13 (TYPE_2__*) ; 
 int ldfile_assumed_script ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int ldlang_sysrooted_script ; 
 TYPE_3__ link_info ; 
 int /*<<< orphan*/  parser_input ; 
 int /*<<< orphan*/ * stat_ptr ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,char*,char*) ; 
 int /*<<< orphan*/  trace_file_tries ; 
 int /*<<< orphan*/  trace_files ; 
 int /*<<< orphan*/  FUNC18 () ; 

bfd_boolean
FUNC19 (lang_input_statement_type *entry,
	      lang_statement_list_type *place)
{
  char **matching;

  if (entry->loaded)
    return TRUE;

  FUNC15 (entry);

  if (! FUNC2 (entry->the_bfd, bfd_archive)
      && ! FUNC3 (entry->the_bfd, bfd_object, &matching))
    {
      bfd_error_type err;
      lang_statement_list_type *hold;
      bfd_boolean bad_load = TRUE;
      bfd_boolean save_ldlang_sysrooted_script;
      bfd_boolean save_as_needed, save_add_needed;

      err = FUNC5 ();

      /* See if the emulation has some special knowledge.  */
      if (FUNC13 (entry))
	return TRUE;

      if (err == bfd_error_file_ambiguously_recognized)
	{
	  char **p;

	  FUNC10 (FUNC0("%B: file not recognized: %E\n"), entry->the_bfd);
	  FUNC10 (FUNC0("%B: matching formats:"), entry->the_bfd);
	  for (p = matching; *p != NULL; p++)
	    FUNC10 (" %s", *p);
	  FUNC10 ("%F\n");
	}
      else if (err != bfd_error_file_not_recognized
	       || place == NULL)
	  FUNC10 (FUNC0("%F%B: file not recognized: %E\n"), entry->the_bfd);
      else
	bad_load = FALSE;

      FUNC4 (entry->the_bfd);
      entry->the_bfd = NULL;

      /* Try to interpret the file as a linker script.  */
      FUNC14 (entry->filename);

      hold = stat_ptr;
      stat_ptr = place;
      save_ldlang_sysrooted_script = ldlang_sysrooted_script;
      ldlang_sysrooted_script = entry->sysrooted;
      save_as_needed = as_needed;
      as_needed = entry->as_needed;
      save_add_needed = add_needed;
      add_needed = entry->add_needed;

      ldfile_assumed_script = TRUE;
      parser_input = input_script;
      /* We want to use the same -Bdynamic/-Bstatic as the one for
	 ENTRY.  */
      config.dynamic_link = entry->dynamic;
      FUNC18 ();
      ldfile_assumed_script = FALSE;

      ldlang_sysrooted_script = save_ldlang_sysrooted_script;
      as_needed = save_as_needed;
      add_needed = save_add_needed;
      stat_ptr = hold;

      return ! bad_load;
    }

  if (FUNC12 (entry))
    return TRUE;

  /* We don't call ldlang_add_file for an archive.  Instead, the
     add_symbols entry point will call ldlang_add_file, via the
     add_archive_element callback, for each element of the archive
     which is used.  */
  switch (FUNC6 (entry->the_bfd))
    {
    default:
      break;

    case bfd_object:
      FUNC16 (entry);
      if (trace_files || trace_file_tries)
	FUNC11 ("%I\n", entry);
      break;

    case bfd_archive:
      FUNC9 (entry->the_bfd);

      if (entry->whole_archive)
	{
	  bfd *member = NULL;
	  bfd_boolean loaded = TRUE;

	  for (;;)
	    {
	      member = FUNC8 (entry->the_bfd, member);

	      if (member == NULL)
		break;

	      if (! FUNC2 (member, bfd_object))
		{
		  FUNC10 (FUNC0("%F%B: member %B in archive is not an object\n"),
			 entry->the_bfd, member);
		  loaded = FALSE;
		}

	      if (! ((*link_info.callbacks->add_archive_element)
		     (&link_info, member, "--whole-archive")))
		FUNC1 ();

	      if (! FUNC7 (member, &link_info))
		{
		  FUNC10 (FUNC0("%F%B: could not read symbols: %E\n"), member);
		  loaded = FALSE;
		}
	    }

	  entry->loaded = loaded;
	  return loaded;
	}
      break;
    }

  if (FUNC7 (entry->the_bfd, &link_info))
    entry->loaded = TRUE;
  else
    FUNC10 (FUNC0("%F%B: could not read symbols: %E\n"), entry->the_bfd);

  return entry->loaded;
}