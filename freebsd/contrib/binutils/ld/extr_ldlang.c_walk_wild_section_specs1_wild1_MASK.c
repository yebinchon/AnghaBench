#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  name; } ;
struct wildcard_list {TYPE_1__ spec; } ;
struct TYPE_14__ {struct wildcard_list** handler_data; } ;
typedef  TYPE_2__ lang_wild_statement_type ;
struct TYPE_15__ {TYPE_10__* the_bfd; } ;
typedef  TYPE_3__ lang_input_statement_type ;
typedef  int /*<<< orphan*/  callback_t ;
typedef  int bfd_boolean ;
struct TYPE_16__ {struct TYPE_16__* next; } ;
typedef  TYPE_4__ asection ;
struct TYPE_12__ {TYPE_4__* sections; } ;

/* Variables and functions */
 char* FUNC0 (TYPE_10__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*,TYPE_4__*,struct wildcard_list*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void
FUNC3 (lang_wild_statement_type *ptr,
				lang_input_statement_type *file,
				callback_t callback,
				void *data)
{
  asection *s;
  struct wildcard_list *wildsec0 = ptr->handler_data[0];

  for (s = file->the_bfd->sections; s != NULL; s = s->next)
    {
      const char *sname = FUNC0 (file->the_bfd, s);
      bfd_boolean skip = !FUNC1 (wildsec0->spec.name, sname);

      if (!skip)
	FUNC2 (ptr, file, s, wildsec0, callback, data);
    }
}