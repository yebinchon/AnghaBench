#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  filename; struct TYPE_7__* archive_next; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__** FUNC3 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  pos_end ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC7 (bfd *arch, char **files_to_move)
{
  bfd **after_bfd;		/* New entries go after this one */
  bfd **current_ptr_ptr;	/* cdr pointer into contents */

  for (; *files_to_move; ++files_to_move)
    {
      current_ptr_ptr = &(arch->archive_next);
      while (*current_ptr_ptr)
	{
	  bfd *current_ptr = *current_ptr_ptr;
	  if (FUNC0 (FUNC4 (*files_to_move, arch),
			    current_ptr->filename) == 0)
	    {
	      /* Move this file to the end of the list - first cut from
		 where it is.  */
	      bfd *link;
	      *current_ptr_ptr = current_ptr->archive_next;

	      /* Now glue to end */
	      after_bfd = FUNC3 (&arch->archive_next, pos_end, NULL);
	      link = *after_bfd;
	      *after_bfd = current_ptr;
	      current_ptr->archive_next = link;

	      if (verbose)
		FUNC5 ("m - %s\n", *files_to_move);

	      goto next_file;
	    }

	  current_ptr_ptr = &((*current_ptr_ptr)->archive_next);
	}
      /* xgettext:c-format */
      FUNC2 (FUNC1("no entry %s in archive %s!"), *files_to_move, arch->filename);

    next_file:;
    }

  FUNC6 (arch);
}