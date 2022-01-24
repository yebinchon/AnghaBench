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
struct ieee_pending_parm {int kind; struct ieee_pending_parm* next; scalar_t__ referencep; int /*<<< orphan*/  val; int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
struct ieee_handle {unsigned int name_indx; struct ieee_pending_parm* pending_parms; int /*<<< orphan*/  fnname; int /*<<< orphan*/  vars; TYPE_2__* type_stack; } ;
typedef  enum debug_var_kind { ____Placeholder_debug_var_kind } debug_var_kind ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_3__ {scalar_t__ referencep; } ;
struct TYPE_4__ {TYPE_1__ type; } ;

/* Variables and functions */
 int DEBUG_LOCAL ; 
#define  DEBUG_PARM_REFERENCE 131 
#define  DEBUG_PARM_REF_REG 130 
#define  DEBUG_PARM_REG 129 
#define  DEBUG_PARM_STACK 128 
 int DEBUG_REGISTER ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct ieee_pending_parm*) ; 
 scalar_t__ ieee_atn_record_enum ; 
 int /*<<< orphan*/  FUNC2 (struct ieee_handle*,int /*<<< orphan*/ *) ; 
 scalar_t__ ieee_nn_record ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee_handle*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee_handle*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee_handle*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee_handle*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee_handle*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee_handle*,unsigned int) ; 

__attribute__((used)) static bfd_boolean
FUNC11 (struct ieee_handle *info)
{
  struct ieee_pending_parm *m;
  unsigned int refcount;

  refcount = 0;
  for (m = info->pending_parms; m != NULL; m = m->next)
    {
      enum debug_var_kind vkind;

      switch (m->kind)
	{
	default:
	  FUNC0 ();
	  return FALSE;
	case DEBUG_PARM_STACK:
	case DEBUG_PARM_REFERENCE:
	  vkind = DEBUG_LOCAL;
	  break;
	case DEBUG_PARM_REG:
	case DEBUG_PARM_REF_REG:
	  vkind = DEBUG_REGISTER;
	  break;
	}

      if (! FUNC3 (info, m->type, 0, FALSE, FALSE))
	return FALSE;
      info->type_stack->type.referencep = m->referencep;
      if (m->referencep)
	++refcount;
      if (! FUNC4 ((void *) info, m->name, vkind, m->val))
	return FALSE;
    }

  /* If there are any reference parameters, we need to output a
     miscellaneous record indicating them.  */
  if (refcount > 0)
    {
      unsigned int nindx, varindx;

      /* FIXME: The MRI compiler outputs the demangled function name
         here, but we are outputting the mangled name.  */
      nindx = info->name_indx;
      ++info->name_indx;
      if (! FUNC2 (info, &info->vars)
	  || ! FUNC8 (info, (int) ieee_nn_record)
	  || ! FUNC10 (info, nindx)
	  || ! FUNC9 (info, "")
	  || ! FUNC5 (info, (int) ieee_atn_record_enum)
	  || ! FUNC10 (info, nindx)
	  || ! FUNC10 (info, 0)
	  || ! FUNC10 (info, 62)
	  || ! FUNC10 (info, 80)
	  || ! FUNC10 (info, refcount + 3)
	  || ! FUNC6 (info, nindx, 'B')
	  || ! FUNC7 (info, nindx, info->fnname)
	  || ! FUNC6 (info, nindx, 0))
	return FALSE;
      for (m = info->pending_parms, varindx = 1;
	   m != NULL;
	   m = m->next, varindx++)
	{
	  if (m->referencep)
	    {
	      if (! FUNC6 (info, nindx, varindx))
		return FALSE;
	    }
	}
    }

  m = info->pending_parms;
  while (m != NULL)
    {
      struct ieee_pending_parm *next;

      next = m->next;
      FUNC1 (m);
      m = next;
    }

  info->pending_parms = NULL;

  return TRUE;
}