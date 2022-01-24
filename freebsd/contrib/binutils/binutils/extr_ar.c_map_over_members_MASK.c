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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_7__ {int /*<<< orphan*/ * filename; struct TYPE_7__* archive_next; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct stat*) ; 
 int counted_name_counter ; 
 scalar_t__ counted_name_mode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC6 (bfd *arch, void (*function)(bfd *), char **files, int count)
{
  bfd *head;
  int match_count;

  if (count == 0)
    {
      for (head = arch->archive_next; head; head = head->archive_next)
	{
	  FUNC1 (1);
	  function (head);
	}
      return;
    }

  /* This may appear to be a baroque way of accomplishing what we want.
     However we have to iterate over the filenames in order to notice where
     a filename is requested but does not exist in the archive.  Ditto
     mapping over each file each time -- we want to hack multiple
     references.  */

  for (; count > 0; files++, count--)
    {
      bfd_boolean found = FALSE;

      match_count = 0;
      for (head = arch->archive_next; head; head = head->archive_next)
	{
	  FUNC1 (1);
	  if (head->filename == NULL)
	    {
	      /* Some archive formats don't get the filenames filled in
		 until the elements are opened.  */
	      struct stat buf;
	      FUNC3 (head, &buf);
	    }
	  if ((head->filename != NULL) &&
	      (!FUNC0 (FUNC5 (*files, arch), head->filename)))
	    {
	      ++match_count;
	      if (counted_name_mode
		  && match_count != counted_name_counter)
		{
		  /* Counting, and didn't match on count; go on to the
                     next one.  */
		  continue;
		}

	      found = TRUE;
	      function (head);
	    }
	}
      if (!found)
	/* xgettext:c-format */
	FUNC4 (stderr, FUNC2("no entry %s in archive\n"), *files);
    }
}