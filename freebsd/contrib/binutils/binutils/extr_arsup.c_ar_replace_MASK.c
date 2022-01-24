#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct list {char* name; struct list* next; } ;
struct TYPE_4__ {struct TYPE_4__* archive_next; int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ bfd ;
struct TYPE_5__ {TYPE_1__* archive_head; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__* obfd ; 
 char* program_name ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC5 (struct list *list)
{
  if (!obfd)
    {
      FUNC3 (stderr, FUNC1("%s: no open output archive\n"), program_name);
      FUNC4 ();
    }
  else
    {
      while (list)
	{
	  /* Find this name in the archive.  */
	  bfd *member = obfd->archive_head;
	  bfd **prev = &(obfd->archive_head);
	  int found = 0;

	  while (member)
	    {
	      if (FUNC0 (member->filename, list->name) == 0)
		{
		  /* Found the one to replace.  */
		  bfd *abfd = FUNC2 (list->name, 0);

		  if (!abfd)
		    {
		      FUNC3 (stderr, FUNC1("%s: can't open file %s\n"),
			       program_name, list->name);
		      FUNC4 ();
		    }
		  else
		    {
		      *prev = abfd;
		      abfd->archive_next = member->archive_next;
		      found = 1;
		    }
		}
	      else
		{
		  prev = &(member->archive_next);
		}
	      member = member->archive_next;
	    }

	  if (!found)
	    {
	      bfd *abfd = FUNC2 (list->name, 0);

	      FUNC3 (stderr,FUNC1("%s: can't find module file %s\n"),
		       program_name, list->name);
	      if (!abfd)
		{
		  FUNC3 (stderr, FUNC1("%s: can't open file %s\n"),
			   program_name, list->name);
		  FUNC4 ();
		}
	      else
		*prev = abfd;
	    }

	  list = list->next;
	}
    }
}