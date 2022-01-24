#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_22__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/ * name; } ;
struct wildcard_list {struct wildcard_list* next; TYPE_1__ spec; } ;
struct TYPE_26__ {struct wildcard_list* section_list; } ;
typedef  TYPE_2__ lang_wild_statement_type ;
struct TYPE_27__ {TYPE_22__* the_bfd; } ;
typedef  TYPE_3__ lang_input_statement_type ;
typedef  int /*<<< orphan*/  (* callback_t ) (TYPE_2__*,struct wildcard_list*,TYPE_5__*,TYPE_3__*,void*) ;
typedef  int bfd_boolean ;
struct TYPE_28__ {struct TYPE_28__* next; } ;
typedef  TYPE_5__ asection ;
struct TYPE_25__ {TYPE_5__* sections; } ;

/* Variables and functions */
 int FALSE ; 
 char* FUNC0 (TYPE_22__*,TYPE_5__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct wildcard_list*,TYPE_5__*,TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*,TYPE_5__*,struct wildcard_list*,int /*<<< orphan*/  (*) (TYPE_2__*,struct wildcard_list*,TYPE_5__*,TYPE_3__*,void*),void*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6 (lang_wild_statement_type *ptr,
			   lang_input_statement_type *file,
			   callback_t callback,
			   void *data)
{
  asection *s;
  struct wildcard_list *sec;

  for (s = file->the_bfd->sections; s != NULL; s = s->next)
    {
      sec = ptr->section_list;
      if (sec == NULL)
	(*callback) (ptr, sec, s, file, data);

      while (sec != NULL)
	{
	  bfd_boolean skip = FALSE;

	  if (sec->spec.name != NULL)
	    {
	      const char *sname = FUNC0 (file->the_bfd, s);

	      if (FUNC5 (sec->spec.name))
		skip = FUNC1 (sec->spec.name, sname, 0) != 0;
	      else
		skip = FUNC2 (sec->spec.name, sname) != 0;
	    }

	  if (!skip)
	    FUNC4 (ptr, file, s, sec, callback, data);

	  sec = sec->next;
	}
    }
}