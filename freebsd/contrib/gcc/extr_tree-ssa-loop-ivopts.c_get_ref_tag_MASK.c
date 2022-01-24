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
typedef  scalar_t__ tree ;
struct TYPE_4__ {scalar_t__ name_mem_tag; } ;
struct TYPE_3__ {scalar_t__ symbol_mem_tag; } ;
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ INDIRECT_REF ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ SSA_NAME ; 
 TYPE_2__* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 TYPE_1__* FUNC12 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC13 (tree ref, tree orig)
{
  tree var = FUNC7 (ref);
  tree aref = NULL_TREE, tag, sv;
  HOST_WIDE_INT offset, size, maxsize;

  for (sv = orig; FUNC10 (sv); sv = FUNC5 (sv, 0))
    {
      aref = FUNC8 (sv, &offset, &size, &maxsize);
      if (ref)
	break;
    }

  if (aref && FUNC3 (aref) && FUNC9 (aref))
    return FUNC11 (sv);

  if (!var)
    return NULL_TREE;

  if (FUNC4 (var) == INDIRECT_REF)
    {
      /* If the base is a dereference of a pointer, first check its name memory
	 tag.  If it does not have one, use its symbol memory tag.  */
      var = FUNC5 (var, 0);
      if (FUNC4 (var) != SSA_NAME)
	return NULL_TREE;

      if (FUNC1 (var))
	{
	  tag = FUNC1 (var)->name_mem_tag;
	  if (tag)
	    return tag;
	}
 
      var = FUNC2 (var);
      tag = FUNC12 (var)->symbol_mem_tag;
      FUNC6 (tag != NULL_TREE);
      return tag;
    }
  else
    { 
      if (!FUNC0 (var))
	return NULL_TREE;

      tag = FUNC12 (var)->symbol_mem_tag;
      if (tag)
	return tag;

      return var;
    }
}