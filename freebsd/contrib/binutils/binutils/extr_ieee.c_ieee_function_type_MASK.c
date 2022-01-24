#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ieee_modified_type {scalar_t__ function; } ;
struct ieee_handle {TYPE_2__* type_stack; } ;
struct ieee_buflist {int dummy; } ;
typedef  unsigned int bfd_vma ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_3__ {scalar_t__ indx; struct ieee_buflist fndef; scalar_t__ localp; } ;
struct TYPE_4__ {TYPE_1__ type; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 scalar_t__ builtin_void ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee_handle*,char const*,unsigned int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,struct ieee_buflist*) ; 
 struct ieee_modified_type* FUNC2 (void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_handle*,struct ieee_buflist*) ; 
 unsigned int FUNC4 (struct ieee_handle*) ; 
 scalar_t__ FUNC5 (struct ieee_handle*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee_handle*,unsigned int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static bfd_boolean
FUNC8 (void *p, int argcount, bfd_boolean varargs)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  bfd_boolean localp;
  unsigned int *args = NULL;
  int i;
  unsigned int retindx;
  struct ieee_buflist fndef;
  struct ieee_modified_type *m;

  localp = FALSE;

  if (argcount > 0)
    {
      args = (unsigned int *) FUNC7 (argcount * sizeof *args);
      for (i = argcount - 1; i >= 0; i--)
	{
	  if (info->type_stack->type.localp)
	    localp = TRUE;
	  args[i] = FUNC4 (info);
	}
    }
  else if (argcount < 0)
    varargs = FALSE;

  if (info->type_stack->type.localp)
    localp = TRUE;
  retindx = FUNC4 (info);

  m = NULL;
  if (argcount < 0 && ! localp)
    {
      m = FUNC2 (p, retindx);
      if (m == NULL)
	return FALSE;

      if (m->function > 0)
	return FUNC5 (info, m->function, 0, TRUE, FALSE);
    }

  /* An attribute of 0x41 means that the frame and push mask are
     unknown.  */
  if (! FUNC3 (info, &fndef)
      || ! FUNC1 (info, (const char *) NULL,
				   (unsigned int) -1, 0, TRUE, localp,
				   &fndef)
      || ! FUNC6 (info, 'x')
      || ! FUNC6 (info, 0x41)
      || ! FUNC6 (info, 0)
      || ! FUNC6 (info, 0)
      || ! FUNC6 (info, retindx)
      || ! FUNC6 (info, (bfd_vma) argcount + (varargs ? 1 : 0)))
    return FALSE;
  if (argcount > 0)
    {
      for (i = 0; i < argcount; i++)
	if (! FUNC6 (info, args[i]))
	  return FALSE;
      FUNC0 (args);
    }
  if (varargs)
    {
      /* A varargs function is represented by writing out the last
         argument as type void *, although this makes little sense.  */
      if (! FUNC6 (info, (bfd_vma) builtin_void + 32))
	return FALSE;
    }

  if (! FUNC6 (info, 0))
    return FALSE;

  /* We wrote the information into fndef, in case we don't need it.
     It will be appended to info->types by ieee_pop_type.  */
  info->type_stack->type.fndef = fndef;

  if (m != NULL)
    m->function = info->type_stack->type.indx;

  return TRUE;
}