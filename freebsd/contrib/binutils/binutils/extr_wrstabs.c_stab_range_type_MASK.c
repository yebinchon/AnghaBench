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
typedef  scalar_t__ bfd_signed_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_2__ {unsigned int size; int /*<<< orphan*/  definition; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,long,long) ; 
 char* FUNC2 (struct stab_write_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct stab_write_handle*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static bfd_boolean
FUNC6 (void *p, bfd_signed_vma low, bfd_signed_vma high)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  bfd_boolean definition;
  unsigned int size;
  char *s, *buf;

  definition = info->type_stack->definition;
  size = info->type_stack->size;

  s = FUNC2 (info);
  buf = (char *) FUNC5 (FUNC4 (s) + 100);
  FUNC1 (buf, "r%s;%ld;%ld;", s, (long) low, (long) high);
  FUNC0 (s);

  if (! FUNC3 (info, buf, 0, definition, size))
    return FALSE;

  FUNC0 (buf);

  return TRUE;
}