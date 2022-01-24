#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ieee_vars {struct ieee_var* vars; scalar_t__ alloc; } ;
struct ieee_var {unsigned long namlen; char const* name; scalar_t__* pslot; int /*<<< orphan*/  kind; } ;
struct ieee_tag {char const* name; scalar_t__* fslots; int /*<<< orphan*/  type; struct ieee_tag* next; } ;
struct ieee_info {int /*<<< orphan*/  dhandle; struct ieee_tag* tags; struct ieee_vars* global_vars; struct ieee_vars vars; } ;
typedef  scalar_t__ debug_type ;
typedef  scalar_t__ debug_field ;
typedef  int bfd_vma ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  scalar_t__ bfd_boolean ;

/* Variables and functions */
 scalar_t__ const DEBUG_FIELD_NULL ; 
 scalar_t__ DEBUG_KIND_POINTER ; 
 scalar_t__ DEBUG_TYPE_NULL ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  IEEE_EXTERNAL ; 
 int /*<<< orphan*/  IEEE_FUNCTION ; 
 int /*<<< orphan*/  IEEE_GLOBAL ; 
 int /*<<< orphan*/  IEEE_LOCAL ; 
 int /*<<< orphan*/  IEEE_STATIC ; 
 scalar_t__ TRUE ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,scalar_t__ const) ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee_info*,int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee_info*,int /*<<< orphan*/  const**,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee_info*,int /*<<< orphan*/  const**,char const**,unsigned long*) ; 
 unsigned long FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (char const*,char const*,unsigned long) ; 

__attribute__((used)) static bfd_boolean
FUNC11 (struct ieee_info *info, const bfd_byte **pp)
{
  const bfd_byte *start;
  bfd_vma flags;
  const char *class, *name;
  unsigned long classlen, namlen;
  debug_type *pslot;
  debug_type target;

  start = *pp;

  if (! FUNC7 (info, pp, &flags))
    return FALSE;

  /* Giving the class name before the member name is in an addendum to
     the spec.  */
  if (flags == 3)
    {
      if (! FUNC8 (info, pp, &class, &classlen))
	return FALSE;
    }

  if (! FUNC8 (info, pp, &name, &namlen))
    return FALSE;

  pslot = NULL;
  if (flags != 3)
    {
      int pass;

      /* We search from the last variable indices to the first in
	 hopes of finding local variables correctly.  We search the
	 local variables on the first pass, and the global variables
	 on the second.  FIXME: This probably won't work in all cases.
	 On the other hand, I don't know what will.  */
      for (pass = 0; pass < 2; pass++)
	{
	  struct ieee_vars *vars;
	  int i;
	  struct ieee_var *pv = NULL;

	  if (pass == 0)
	    vars = &info->vars;
	  else
	    {
	      vars = info->global_vars;
	      if (vars == NULL)
		break;
	    }

	  for (i = (int) vars->alloc - 1; i >= 0; i--)
	    {
	      bfd_boolean found;

	      pv = vars->vars + i;

	      if (pv->pslot == NULL
		  || pv->namlen != namlen
		  || FUNC10 (pv->name, name, namlen) != 0)
		continue;

	      found = FALSE;
	      switch (flags)
		{
		default:
		  FUNC6 (info, start,
			      FUNC0("unrecognized C++ reference type"));
		  return FALSE;

		case 0:
		  /* Global variable or function.  */
		  if (pv->kind == IEEE_GLOBAL
		      || pv->kind == IEEE_EXTERNAL
		      || pv->kind == IEEE_FUNCTION)
		    found = TRUE;
		  break;

		case 1:
		  /* Global static variable or function.  */
		  if (pv->kind == IEEE_STATIC
		      || pv->kind == IEEE_FUNCTION)
		    found = TRUE;
		  break;

		case 2:
		  /* Local variable.  */
		  if (pv->kind == IEEE_LOCAL)
		    found = TRUE;
		  break;
		}

	      if (found)
		break;
	    }

	  if (i >= 0)
	    {
	      pslot = pv->pslot;
	      break;
	    }
	}
    }
  else
    {
      struct ieee_tag *it;

      for (it = info->tags; it != NULL; it = it->next)
	{
	  if (it->name[0] == class[0]
	      && FUNC10 (it->name, class, classlen) == 0
	      && FUNC9 (it->name) == classlen)
	    {
	      if (it->fslots != NULL)
		{
		  const debug_field *pf;
		  unsigned int findx;

		  pf = FUNC2 (info->dhandle, it->type);
		  if (pf == NULL)
		    {
		      FUNC6 (info, start,
				  "C++ reference in class with no fields");
		      return FALSE;
		    }

		  for (findx = 0; *pf != DEBUG_FIELD_NULL; pf++, findx++)
		    {
		      const char *fname;

		      fname = FUNC1 (info->dhandle, *pf);
		      if (fname == NULL)
			return FALSE;
		      if (FUNC10 (fname, name, namlen) == 0
			  && FUNC9 (fname) == namlen)
			{
			  pslot = it->fslots + findx;
			  break;
			}
		    }
		}

	      break;
	    }
	}
    }

  if (pslot == NULL)
    {
      FUNC6 (info, start, FUNC0("C++ reference not found"));
      return FALSE;
    }

  /* We allocated the type of the object as an indirect type pointing
     to *pslot, which we can now update to be a reference type.  */
  if (FUNC4 (info->dhandle, *pslot) != DEBUG_KIND_POINTER)
    {
      FUNC6 (info, start, FUNC0("C++ reference is not pointer"));
      return FALSE;
    }

  target = FUNC3 (info->dhandle, *pslot);
  *pslot = FUNC5 (info->dhandle, target);
  if (*pslot == DEBUG_TYPE_NULL)
    return FALSE;

  return TRUE;
}