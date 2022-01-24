#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct list {char* name; struct list* next; } ;
struct TYPE_3__ {struct TYPE_3__* archive_next; int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ bfd ;
struct TYPE_4__ {TYPE_1__* archive_head; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_2__* obfd ; 
 char* program_name ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC4 (struct list *list)
{
  if (!obfd)
    {
      FUNC2 (stderr, FUNC1("%s: no open output archive\n"), program_name);
      FUNC3 ();
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
	      if (FUNC0(member->filename, list->name) == 0)
		{
		  *prev = member->archive_next;
		  found = 1;
		}
	      else
		prev = &(member->archive_next);

	      member = member->archive_next;
	    }

	  if (!found)
	    {
	      FUNC2 (stderr, FUNC1("%s: can't find module file %s\n"),
		       program_name, list->name);
	      FUNC3 ();
	    }

	  list = list->next;
	}
    }
}