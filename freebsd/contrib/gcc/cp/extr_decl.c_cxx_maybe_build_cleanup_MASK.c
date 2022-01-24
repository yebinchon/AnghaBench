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
typedef  scalar_t__ tree ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_EXPR ; 
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int LOOKUP_DESTRUCTOR ; 
 int LOOKUP_NONVIRTUAL ; 
 int LOOKUP_NORMAL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ flag_expensive_optimizations ; 
 int /*<<< orphan*/  sfk_complete_destructor ; 

tree
FUNC11 (tree decl)
{
  tree type = FUNC6 (decl);

  /* APPLE LOCAL begin omit calls to empty destructors 5559195 */
  tree dtor = NULL_TREE;
  bool build_cleanup = false;

  if (FUNC4 (type) == RECORD_TYPE)
    dtor = FUNC0 (type);

  if (type != error_mark_node)
    {
      if (FUNC4 (type) == RECORD_TYPE)
	/* For RECORD_TYPEs, we can refer to more precise flags than
	   TYPE_HAS_NONTRIVIAL_DESTRUCTOR. */
	build_cleanup = (dtor && FUNC5 (dtor))
	  || FUNC2 (type)
	  || FUNC1 (type);
      else
	build_cleanup = FUNC7 (type);
    }

  if (build_cleanup)
    {
  /* APPLE LOCAL end omit calls to empty destructors 5559195 */
      int flags = LOOKUP_NORMAL|LOOKUP_DESTRUCTOR;
      tree rval;
      bool has_vbases = (FUNC4 (type) == RECORD_TYPE
			 && FUNC3 (type));
      if (FUNC4 (type) == ARRAY_TYPE)
	rval = decl;
      else
	{
	  FUNC10 (decl);
	  rval = FUNC9 (ADDR_EXPR, decl, 0);
	}

      /* Optimize for space over speed here.  */
      if (!has_vbases || flag_expensive_optimizations)
	flags |= LOOKUP_NONVIRTUAL;

      rval = FUNC8 (FUNC6 (rval), rval,
			   sfk_complete_destructor, flags, 0);

      return rval;
    }
  return NULL_TREE;
}