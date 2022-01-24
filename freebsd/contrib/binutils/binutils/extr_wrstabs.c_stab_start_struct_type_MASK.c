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
struct TYPE_2__ {char* fields; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_KIND_ILLEGAL ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char,...) ; 
 long FUNC1 (struct stab_write_handle*,char const*,unsigned int,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct stab_write_handle*,char*,long,scalar_t__,unsigned int) ; 
 int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static bfd_boolean
FUNC5 (void *p, const char *tag, unsigned int id,
			bfd_boolean structp, unsigned int size)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  long index;
  bfd_boolean definition;
  char *buf;

  buf = (char *) FUNC4 (40);

  if (id == 0)
    {
      index = 0;
      *buf = '\0';
      definition = FALSE;
    }
  else
    {
      index = FUNC1 (info, tag, id, DEBUG_KIND_ILLEGAL,
				     &size);
      if (index < 0)
	return FALSE;
      FUNC0 (buf, "%ld=", index);
      definition = TRUE;
    }

  FUNC0 (buf + FUNC3 (buf), "%c%u",
	   structp ? 's' : 'u',
	   size);

  if (! FUNC2 (info, buf, index, definition, size))
    return FALSE;

  info->type_stack->fields = (char *) FUNC4 (1);
  info->type_stack->fields[0] = '\0';

  return TRUE;
}