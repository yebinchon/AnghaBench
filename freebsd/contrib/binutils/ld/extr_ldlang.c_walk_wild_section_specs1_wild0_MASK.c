#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wildcard_list {int dummy; } ;
struct TYPE_5__ {struct wildcard_list** handler_data; } ;
typedef  TYPE_1__ lang_wild_statement_type ;
typedef  int /*<<< orphan*/  lang_input_statement_type ;
typedef  int /*<<< orphan*/  callback_t ;
typedef  scalar_t__ bfd_boolean ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,struct wildcard_list*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct wildcard_list*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void
FUNC3 (lang_wild_statement_type *ptr,
				lang_input_statement_type *file,
				callback_t callback,
				void *data)
{
  /* We can just do a hash lookup for the section with the right name.
     But if that lookup discovers more than one section with the name
     (should be rare), we fall back to the general algorithm because
     we would otherwise have to sort the sections to make sure they
     get processed in the bfd's order.  */
  bfd_boolean multiple_sections_found;
  struct wildcard_list *sec0 = ptr->handler_data[0];
  asection *s0 = FUNC0 (file, sec0, &multiple_sections_found);

  if (multiple_sections_found)
    FUNC2 (ptr, file, callback, data);
  else if (s0)
    FUNC1 (ptr, file, s0, sec0, callback, data);
}