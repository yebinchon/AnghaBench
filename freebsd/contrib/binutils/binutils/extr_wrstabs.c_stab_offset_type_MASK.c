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
typedef  int bfd_boolean ;
struct TYPE_2__ {int definition; } ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*) ; 
 char* FUNC2 (struct stab_write_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct stab_write_handle*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static bfd_boolean
FUNC6 (void *p)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  bfd_boolean definition;
  char *target, *base, *buf;

  definition = info->type_stack->definition;
  target = FUNC2 (info);

  definition = definition || info->type_stack->definition;
  base = FUNC2 (info);

  buf = (char *) FUNC5 (FUNC4 (target) + FUNC4 (base) + 3);
  FUNC1 (buf, "@%s,%s", base, target);
  FUNC0 (base);
  FUNC0 (target);

  if (! FUNC3 (info, buf, 0, definition, 0))
    return FALSE;

  FUNC0 (buf);

  return TRUE;
}