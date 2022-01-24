#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_14__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  name; } ;
struct wildcard_list {TYPE_1__ spec; } ;
struct TYPE_18__ {struct wildcard_list** handler_data; } ;
typedef  TYPE_2__ lang_wild_statement_type ;
struct TYPE_19__ {TYPE_14__* the_bfd; } ;
typedef  TYPE_3__ lang_input_statement_type ;
typedef  int /*<<< orphan*/  callback_t ;
typedef  int bfd_boolean ;
struct TYPE_20__ {struct TYPE_20__* next; } ;
typedef  TYPE_4__ asection ;
struct TYPE_16__ {TYPE_4__* sections; } ;

/* Variables and functions */
 char* FUNC0 (TYPE_14__*,TYPE_4__*) ; 
 TYPE_4__* FUNC1 (TYPE_3__*,struct wildcard_list*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*,TYPE_4__*,struct wildcard_list*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void
FUNC5 (lang_wild_statement_type *ptr,
				lang_input_statement_type *file,
				callback_t callback,
				void *data)
{
  asection *s;
  struct wildcard_list *sec0 = ptr->handler_data[0];
  struct wildcard_list *wildsec1 = ptr->handler_data[1];
  bfd_boolean multiple_sections_found;
  asection *s0 = FUNC1 (file, sec0, &multiple_sections_found);

  if (multiple_sections_found)
    {
      FUNC4 (ptr, file, callback, data);
      return;
    }

  /* Note that if the section was not found, s0 is NULL and
     we'll simply never succeed the s == s0 test below.  */
  for (s = file->the_bfd->sections; s != NULL; s = s->next)
    {
      /* Recall that in this code path, a section cannot satisfy more
	 than one spec, so if s == s0 then it cannot match
	 wildspec1.  */
      if (s == s0)
	FUNC3 (ptr, file, s, sec0, callback, data);
      else
	{
	  const char *sname = FUNC0 (file->the_bfd, s);
	  bfd_boolean skip = !FUNC2 (wildsec1->spec.name, sname);

	  if (!skip)
	    FUNC3 (ptr, file, s, wildsec1, callback,
					data);
	}
    }
}