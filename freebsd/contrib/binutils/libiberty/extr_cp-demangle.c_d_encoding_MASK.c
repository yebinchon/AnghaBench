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
struct TYPE_3__ {struct demangle_component* right; } ;
struct TYPE_4__ {TYPE_1__ s_binary; } ;
struct demangle_component {scalar_t__ type; TYPE_2__ u; } ;
struct d_info {int options; } ;

/* Variables and functions */
 scalar_t__ DEMANGLE_COMPONENT_CONST_THIS ; 
 scalar_t__ DEMANGLE_COMPONENT_LOCAL_NAME ; 
 scalar_t__ DEMANGLE_COMPONENT_RESTRICT_THIS ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_TYPED_NAME ; 
 scalar_t__ DEMANGLE_COMPONENT_VOLATILE_THIS ; 
 int DMGL_PARAMS ; 
 int /*<<< orphan*/  FUNC0 (struct d_info*,int /*<<< orphan*/ ) ; 
 struct demangle_component* FUNC1 (struct demangle_component*) ; 
 struct demangle_component* FUNC2 (struct d_info*,int /*<<< orphan*/ ,struct demangle_component*,int /*<<< orphan*/ ) ; 
 struct demangle_component* FUNC3 (struct d_info*) ; 
 char FUNC4 (struct d_info*) ; 
 struct demangle_component* FUNC5 (struct demangle_component*) ; 
 struct demangle_component* FUNC6 (struct d_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct demangle_component*) ; 

__attribute__((used)) static struct demangle_component *
FUNC8 (struct d_info *di, int top_level)
{
  char peek = FUNC4 (di);

  if (peek == 'G' || peek == 'T')
    return FUNC6 (di);
  else
    {
      struct demangle_component *dc;

      dc = FUNC3 (di);

      if (dc != NULL && top_level && (di->options & DMGL_PARAMS) == 0)
	{
	  /* Strip off any initial CV-qualifiers, as they really apply
	     to the `this' parameter, and they were not output by the
	     v2 demangler without DMGL_PARAMS.  */
	  while (dc->type == DEMANGLE_COMPONENT_RESTRICT_THIS
		 || dc->type == DEMANGLE_COMPONENT_VOLATILE_THIS
		 || dc->type == DEMANGLE_COMPONENT_CONST_THIS)
	    dc = FUNC1 (dc);

	  /* If the top level is a DEMANGLE_COMPONENT_LOCAL_NAME, then
	     there may be CV-qualifiers on its right argument which
	     really apply here; this happens when parsing a class
	     which is local to a function.  */
	  if (dc->type == DEMANGLE_COMPONENT_LOCAL_NAME)
	    {
	      struct demangle_component *dcr;

	      dcr = FUNC5 (dc);
	      while (dcr->type == DEMANGLE_COMPONENT_RESTRICT_THIS
		     || dcr->type == DEMANGLE_COMPONENT_VOLATILE_THIS
		     || dcr->type == DEMANGLE_COMPONENT_CONST_THIS)
		dcr = FUNC1 (dcr);
	      dc->u.s_binary.right = dcr;
	    }

	  return dc;
	}

      peek = FUNC4 (di);
      if (dc == NULL || peek == '\0' || peek == 'E')
	return dc;
      return FUNC2 (di, DEMANGLE_COMPONENT_TYPED_NAME, dc,
			  FUNC0 (di, FUNC7 (dc)));
    }
}