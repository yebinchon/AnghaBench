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
typedef  scalar_t__ tree ;
struct TYPE_2__ {scalar_t__ (* types_compatible_p ) (scalar_t__,scalar_t__) ;} ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 int /*<<< orphan*/  ARRAY_REF ; 
 scalar_t__ ARRAY_TYPE ; 
 int /*<<< orphan*/  INDIRECT_REF ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 TYPE_1__ lang_hooks ; 
 scalar_t__ size_zero_node ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static tree
FUNC12 (tree t)
{
  tree type = FUNC4 (FUNC4 (t));
  tree sub = t;
  tree subtype;

  FUNC1 (sub);
  subtype = FUNC4 (sub);
  if (!FUNC0 (subtype))
    return NULL_TREE;

  if (FUNC2 (sub) == ADDR_EXPR)
    {
      tree op = FUNC3 (sub, 0);
      tree optype = FUNC4 (op);
      /* *&p => p */
      if (lang_hooks.types_compatible_p (type, optype))
        return op;
      /* *(foo *)&fooarray => fooarray[0] */
      else if (FUNC2 (optype) == ARRAY_TYPE
	       && lang_hooks.types_compatible_p (type, FUNC4 (optype)))
       {
         tree type_domain = FUNC5 (optype);
         tree min_val = size_zero_node;
         if (type_domain && FUNC6 (type_domain))
           min_val = FUNC6 (type_domain);
         return FUNC8 (ARRAY_REF, type, op, min_val, NULL_TREE, NULL_TREE);
       }
    }

  /* *(foo *)fooarrptr => (*fooarrptr)[0] */
  if (FUNC2 (FUNC4 (subtype)) == ARRAY_TYPE
      && lang_hooks.types_compatible_p (type, FUNC4 (FUNC4 (subtype))))
    {
      tree type_domain;
      tree min_val = size_zero_node;
      tree osub = sub;
      sub = FUNC12 (sub);
      if (! sub)
	sub = FUNC7 (INDIRECT_REF, FUNC4 (subtype), osub);
      type_domain = FUNC5 (FUNC4 (sub));
      if (type_domain && FUNC6 (type_domain))
        min_val = FUNC6 (type_domain);
      return FUNC8 (ARRAY_REF, type, sub, min_val, NULL_TREE, NULL_TREE);
    }

  return NULL_TREE;
}