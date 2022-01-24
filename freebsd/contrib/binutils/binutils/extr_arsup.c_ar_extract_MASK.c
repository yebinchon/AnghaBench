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
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__* obfd ; 
 char* program_name ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC6 (struct list *list)
{
  if (!obfd)
    {
      FUNC4 (stderr, FUNC1("%s: no open archive\n"), program_name);
      FUNC5 ();
    }
  else
    {
      while (list)
	{
	  /* Find this name in the archive.  */
	  bfd *member = obfd->archive_head;
	  int found = 0;

	  while (member && !found)
	    {
	      if (FUNC0 (member->filename, list->name) == 0)
		{
		  FUNC3 (member);
		  found = 1;
		}

	      member = member->archive_next;
	    }

	  if (!found)
	    {
	      FUNC2 (list->name, 0);
	      FUNC4 (stderr, FUNC1("%s: can't find module file %s\n"),
		       program_name, list->name);
	    }

	  list = list->next;
	}
    }
}