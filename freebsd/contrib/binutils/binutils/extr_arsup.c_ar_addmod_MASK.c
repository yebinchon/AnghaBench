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
struct TYPE_4__ {struct TYPE_4__* archive_next; } ;
typedef  TYPE_1__ bfd ;
struct TYPE_5__ {TYPE_1__* archive_head; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (char*,int /*<<< orphan*/ *) ; 
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
      FUNC2 (stderr, FUNC0("%s: no open output archive\n"), program_name);
      FUNC3 ();
    }
  else
    {
      while (list)
	{
	  bfd *abfd = FUNC1 (list->name, NULL);

	  if (!abfd)
	    {
	      FUNC2 (stderr, FUNC0("%s: can't open file %s\n"),
		       program_name, list->name);
	      FUNC3 ();
	    }
	  else
	    {
	      abfd->archive_next = obfd->archive_head;
	      obfd->archive_head = abfd;
	    }
	  list = list->next;
	}
    }
}