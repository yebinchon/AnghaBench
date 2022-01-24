#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_mtime; } ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_10__ {char* filename; struct TYPE_10__* archive_next; int /*<<< orphan*/ * arelt_data; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_1__**,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,struct stat*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__** FUNC7 (TYPE_1__**,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ newer_only ; 
 int /*<<< orphan*/  FUNC8 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/ * output_filename ; 
 int /*<<< orphan*/  pos_after ; 
 int /*<<< orphan*/  pos_end ; 
 scalar_t__ FUNC9 (char*,struct stat*) ; 
 int /*<<< orphan*/  verbose ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC11 (bfd *arch, char **files_to_move, bfd_boolean quick)
{
  bfd_boolean changed = FALSE;
  bfd **after_bfd;		/* New entries go after this one.  */
  bfd *current;
  bfd **current_ptr;

  while (files_to_move && *files_to_move)
    {
      if (! quick)
	{
	  current_ptr = &arch->archive_next;
	  while (*current_ptr)
	    {
	      current = *current_ptr;

	      /* For compatibility with existing ar programs, we
		 permit the same file to be added multiple times.  */
	      if (FUNC0 (FUNC8 (*files_to_move, arch),
				FUNC8 (current->filename, arch)) == 0
		  && current->arelt_data != NULL)
		{
		  if (newer_only)
		    {
		      struct stat fsbuf, asbuf;

		      if (FUNC9 (*files_to_move, &fsbuf) != 0)
			{
			  if (errno != ENOENT)
			    FUNC4 (*files_to_move);
			  goto next_file;
			}
		      if (FUNC5 (current, &asbuf) != 0)
			/* xgettext:c-format */
			FUNC6 (FUNC1("internal stat error on %s"),
			       current->filename);

		      if (fsbuf.st_mtime <= asbuf.st_mtime)
			goto next_file;
		    }

		  after_bfd = FUNC7 (&arch->archive_next, pos_after,
					   current->filename);
		  if (FUNC3 (after_bfd, *files_to_move,
				       verbose))
		    {
		      /* Snip out this entry from the chain.  */
		      *current_ptr = (*current_ptr)->archive_next;
		      changed = TRUE;
		    }

		  goto next_file;
		}
	      current_ptr = &(current->archive_next);
	    }
	}

      /* Add to the end of the archive.  */
      after_bfd = FUNC7 (&arch->archive_next, pos_end, NULL);

      if (FUNC2 (after_bfd, *files_to_move, verbose))
	changed = TRUE;

    next_file:;

      files_to_move++;
    }

  if (changed)
    FUNC10 (arch);
  else
    output_filename = NULL;
}