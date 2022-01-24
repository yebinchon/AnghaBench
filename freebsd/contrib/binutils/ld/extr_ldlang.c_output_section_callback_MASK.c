#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct wildcard_list {int dummy; } ;
struct TYPE_13__ {TYPE_3__* head; } ;
struct TYPE_11__ {TYPE_4__ children; } ;
typedef  TYPE_2__ lang_wild_statement_type ;
struct TYPE_10__ {TYPE_3__* next; } ;
struct TYPE_12__ {TYPE_1__ header; } ;
typedef  TYPE_3__ lang_statement_union_type ;
typedef  TYPE_4__ lang_statement_list_type ;
typedef  int /*<<< orphan*/  lang_output_section_statement_type ;
typedef  int /*<<< orphan*/  lang_input_statement_type ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (TYPE_2__*,struct wildcard_list*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5 (lang_wild_statement_type *ptr,
			 struct wildcard_list *sec,
			 asection *section,
			 lang_input_statement_type *file,
			 void *output)
{
  lang_statement_union_type *before;

  /* Exclude sections that match UNIQUE_SECTION_LIST.  */
  if (FUNC3 (section))
    return;

  before = FUNC4 (ptr, sec, file, section);

  /* Here BEFORE points to the lang_input_section which
     should follow the one we are about to add.  If BEFORE
     is NULL, then the section should just go at the end
     of the current list.  */

  if (before == NULL)
    FUNC1 (&ptr->children, section,
		      (lang_output_section_statement_type *) output);
  else
    {
      lang_statement_list_type list;
      lang_statement_union_type **pp;

      FUNC2 (&list);
      FUNC1 (&list, section,
			(lang_output_section_statement_type *) output);

      /* If we are discarding the section, LIST.HEAD will
	 be NULL.  */
      if (list.head != NULL)
	{
	  FUNC0 (list.head->header.next == NULL);

	  for (pp = &ptr->children.head;
	       *pp != before;
	       pp = &(*pp)->header.next)
	    FUNC0 (*pp != NULL);

	  list.head->header.next = *pp;
	  *pp = list.head;
	}
    }
}