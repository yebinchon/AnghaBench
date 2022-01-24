#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int sysrooted; char const* name; struct TYPE_9__* next; } ;
typedef  TYPE_1__ search_dirs_type ;
struct TYPE_10__ {int sysrooted; char* filename; scalar_t__ is_archive; scalar_t__ dynamic; } ;
typedef  TYPE_2__ lang_input_statement_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_11__ {int /*<<< orphan*/  relocatable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ld_sysroot ; 
 scalar_t__ FUNC4 (char const*,TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC5 (char*,TYPE_2__*) ; 
 TYPE_4__ link_info ; 
 TYPE_1__* search_head ; 
 char* slash ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char const*,char*,char const*,...) ; 
 scalar_t__ FUNC7 (char const*) ; 
 char* FUNC8 (scalar_t__) ; 

bfd_boolean
FUNC9 (const char *arch,
			 lang_input_statement_type *entry,
			 const char *lib,
			 const char *suffix)
{
  search_dirs_type *search;

  /* If this is not an archive, try to open it in the current
     directory first.  */
  if (! entry->is_archive)
    {
      if (entry->sysrooted && FUNC0 (entry->filename))
	{
	  char *name = FUNC1 (ld_sysroot, entry->filename,
			       (const char *) NULL);
	  if (FUNC5 (name, entry))
	    {
	      entry->filename = name;
	      return TRUE;
	    }
	  FUNC2 (name);
	}
      else if (FUNC5 (entry->filename, entry))
	{
	  entry->sysrooted = FUNC0 (entry->filename)
	    && FUNC3 (entry->filename, TRUE);
	  return TRUE;
	}

      if (FUNC0 (entry->filename))
	return FALSE;
    }

  for (search = search_head; search != NULL; search = search->next)
    {
      char *string;

      if (entry->dynamic && ! link_info.relocatable)
	{
	  if (FUNC4 (arch, search, entry))
	    {
	      entry->sysrooted = search->sysrooted;
	      return TRUE;
	    }
	}

      string = FUNC8 (FUNC7 (search->name)
			+ FUNC7 (slash)
			+ FUNC7 (lib)
			+ FUNC7 (entry->filename)
			+ FUNC7 (arch)
			+ FUNC7 (suffix)
			+ 1);

      if (entry->is_archive)
	FUNC6 (string, "%s%s%s%s%s%s", search->name, slash,
		 lib, entry->filename, arch, suffix);
      else
	FUNC6 (string, "%s%s%s", search->name, slash, entry->filename);

      if (FUNC5 (string, entry))
	{
	  entry->filename = string;
	  entry->sysrooted = search->sysrooted;
	  return TRUE;
	}

      FUNC2 (string);
    }

  return FALSE;
}