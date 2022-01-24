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
typedef  scalar_t__ bfd_boolean ;
struct TYPE_2__ {char* index; char* vtable; scalar_t__ definition; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 char* FUNC3 (struct stab_write_handle*) ; 
 int /*<<< orphan*/  FUNC4 (void*,char const*,unsigned int,scalar_t__,unsigned int) ; 
 int FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static bfd_boolean
FUNC7 (void *p, const char *tag, unsigned int id, bfd_boolean structp, unsigned int size, bfd_boolean vptr, bfd_boolean ownvptr)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  bfd_boolean definition;
  char *vstring;

  if (! vptr || ownvptr)
    {
      definition = FALSE;
      vstring = NULL;
    }
  else
    {
      definition = info->type_stack->definition;
      vstring = FUNC3 (info);
    }

  if (! FUNC4 (p, tag, id, structp, size))
    return FALSE;

  if (vptr)
    {
      char *vtable;

      if (ownvptr)
	{
	  FUNC0 (info->type_stack->index > 0);
	  vtable = (char *) FUNC6 (20);
	  FUNC2 (vtable, "~%%%ld", info->type_stack->index);
	}
      else
	{
	  vtable = (char *) FUNC6 (FUNC5 (vstring) + 3);
	  FUNC2 (vtable, "~%%%s", vstring);
	  FUNC1 (vstring);
	}

      info->type_stack->vtable = vtable;
    }

  if (definition)
    info->type_stack->definition = TRUE;

  return TRUE;
}