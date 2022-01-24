#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ sorted; int /*<<< orphan*/ * name; TYPE_1__* exclude_name_list; } ;
struct wildcard_list {struct wildcard_list* next; TYPE_2__ spec; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; struct TYPE_10__* next; } ;
typedef  TYPE_4__ name_list ;
struct TYPE_9__ {int /*<<< orphan*/  head; } ;
struct TYPE_11__ {TYPE_3__ children; struct wildcard_list* section_list; scalar_t__ filenames_sorted; int /*<<< orphan*/ * filename; } ;
typedef  TYPE_5__ lang_wild_statement_type ;
typedef  int /*<<< orphan*/  lang_output_section_statement_type ;
struct TYPE_7__ {TYPE_4__* next; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4 (lang_wild_statement_type *w,
		      lang_output_section_statement_type *os)
{
  struct wildcard_list *sec;

  FUNC2 ();

  if (w->filenames_sorted)
    FUNC0 ("SORT(");
  if (w->filename != NULL)
    FUNC0 ("%s", w->filename);
  else
    FUNC0 ("*");
  if (w->filenames_sorted)
    FUNC0 (")");

  FUNC0 ("(");
  for (sec = w->section_list; sec; sec = sec->next)
    {
      if (sec->spec.sorted)
	FUNC0 ("SORT(");
      if (sec->spec.exclude_name_list != NULL)
	{
	  name_list *tmp;
	  FUNC0 ("EXCLUDE_FILE(%s", sec->spec.exclude_name_list->name);
	  for (tmp = sec->spec.exclude_name_list->next; tmp; tmp = tmp->next)
	    FUNC0 (" %s", tmp->name);
	  FUNC0 (") ");
	}
      if (sec->spec.name != NULL)
	FUNC0 ("%s", sec->spec.name);
      else
	FUNC0 ("*");
      if (sec->spec.sorted)
	FUNC0 (")");
      if (sec->next)
	FUNC0 (" ");
    }
  FUNC0 (")");

  FUNC1 ();

  FUNC3 (w->children.head, os);
}