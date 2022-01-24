#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ reference_count; } ;
typedef  TYPE_1__ memory_page_t ;
struct TYPE_6__ {int page_size; int page_count; scalar_t__ page_protections_allowed; } ;
typedef  int LONGEST ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_3__ memory_page_dictionary ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5 (int pid, CORE_ADDR start, LONGEST len, int type)
{
  CORE_ADDR page_start;
  int dictionary_is_empty;
  int page_size;
  int page_id;
  LONGEST range_size_in_pages;

  if (type != 0)
    FUNC0 ("read or access hardware watchpoints not supported on HP-UX");

  /* Examine all pages in the address range. */
  FUNC4 ();

  page_size = memory_page_dictionary.page_size;
  page_start = (start / page_size) * page_size;
  range_size_in_pages = ((LONGEST) len + (LONGEST) page_size - 1) / (LONGEST) page_size;

  for (page_id = 0; page_id < range_size_in_pages; page_id++, page_start += page_size)
    {
      memory_page_t *page;

      page = FUNC1 (pid, page_start);
      page->reference_count--;

      /* Was this the last reference of this page?  If so, then we
         must scrub the entry from the dictionary, and also restore
         the page's original permissions.
       */
      if (page->reference_count == 0)
	FUNC3 (pid, page);
    }

  dictionary_is_empty = (memory_page_dictionary.page_count == (LONGEST) 0);

  /* If write protections are currently disallowed, then that implies that
     wait_for_inferior believes that the inferior is within a system call.
     Since we want to see both syscall entry and return, it's clearly not
     good to disable syscall events in this state!

     ??rehrauer: Yeah, it'd be better if we had a specific flag that said,
     "inferior is between syscall events now".  Oh well.
   */
  if (dictionary_is_empty && memory_page_dictionary.page_protections_allowed)
    FUNC2 (pid);

  return 1;
}