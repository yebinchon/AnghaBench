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
struct TYPE_2__ {char* methods; int /*<<< orphan*/ * fields; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,int) ; 

__attribute__((used)) static bfd_boolean
FUNC5 (void *p, const char *name)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  char *m;

  FUNC0 (info->type_stack != NULL && info->type_stack->fields != NULL);

  if (info->type_stack->methods == NULL)
    {
      m = (char *) FUNC3 (FUNC2 (name) + 3);
      *m = '\0';
    }
  else
    {
      m = (char *) FUNC4 (info->type_stack->methods,
			     (FUNC2 (info->type_stack->methods)
			      + FUNC2 (name)
			      + 4));
    }

  FUNC1 (m + FUNC2 (m), "%s::", name);

  info->type_stack->methods = m;

  return TRUE;
}