#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wildcard_spec {scalar_t__ sorted; int /*<<< orphan*/ * name; } ;
struct TYPE_5__ {int /*<<< orphan*/ * name; } ;
struct wildcard_list {struct wildcard_list* next; TYPE_1__ spec; } ;
struct TYPE_6__ {int filenames_sorted; int /*<<< orphan*/  children; int /*<<< orphan*/  keep_sections; struct wildcard_list* section_list; int /*<<< orphan*/ * filename; } ;
typedef  TYPE_2__ lang_wild_statement_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ by_name ; 
 void* lang_has_input_file ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lang_wild_statement ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* placed_commons ; 
 int /*<<< orphan*/  stat_ptr ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5 (struct wildcard_spec *filespec,
	       struct wildcard_list *section_list,
	       bfd_boolean keep_sections)
{
  struct wildcard_list *curr, *next;
  lang_wild_statement_type *new;

  /* Reverse the list as the parser puts it back to front.  */
  for (curr = section_list, section_list = NULL;
       curr != NULL;
       section_list = curr, curr = next)
    {
      if (curr->spec.name != NULL && FUNC3 (curr->spec.name, "COMMON") == 0)
	placed_commons = TRUE;

      next = curr->next;
      curr->next = section_list;
    }

  if (filespec != NULL && filespec->name != NULL)
    {
      if (FUNC3 (filespec->name, "*") == 0)
	filespec->name = NULL;
      else if (! FUNC4 (filespec->name))
	lang_has_input_file = TRUE;
    }

  new = FUNC2 (lang_wild_statement, stat_ptr);
  new->filename = NULL;
  new->filenames_sorted = FALSE;
  if (filespec != NULL)
    {
      new->filename = filespec->name;
      new->filenames_sorted = filespec->sorted == by_name;
    }
  new->section_list = section_list;
  new->keep_sections = keep_sections;
  FUNC1 (&new->children);
  FUNC0 (new);
}