#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stab_write_handle {TYPE_1__* type_stack; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_2__ {char* fields; long index; unsigned int size; int /*<<< orphan*/  definition; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*) ; 
 char* FUNC3 (struct stab_write_handle*) ; 
 int /*<<< orphan*/  FUNC4 (struct stab_write_handle*,char*,long,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static bfd_boolean
FUNC7 (void *p)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  bfd_boolean definition;
  long index;
  unsigned int size;
  char *fields, *first, *buf;

  FUNC0 (info->type_stack != NULL && info->type_stack->fields != NULL);

  definition = info->type_stack->definition;
  index = info->type_stack->index;
  size = info->type_stack->size;
  fields = info->type_stack->fields;
  first = FUNC3 (info);

  buf = (char *) FUNC6 (FUNC5 (first) + FUNC5 (fields) + 2);
  FUNC2 (buf, "%s%s;", first, fields);
  FUNC1 (first);
  FUNC1 (fields);

  if (! FUNC4 (info, buf, index, definition, size))
    return FALSE;

  FUNC1 (buf);

  return TRUE;
}