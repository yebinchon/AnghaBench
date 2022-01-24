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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FIELD_DECL ; 
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  OPT_Wextra ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  current_class_ptr ; 
 int /*<<< orphan*/  current_class_type ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__) ; 
 scalar_t__ extra_warnings ; 
 int in_base_initializer ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ void_type_node ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC18 (tree mem_inits)
{
  /* We will already have issued an error message about the fact that
     the type is incomplete.  */
  if (!FUNC2 (current_class_type))
    return;

  /* Sort the mem-initializers into the order in which the
     initializations should be performed.  */
  mem_inits = FUNC16 (current_class_type, mem_inits);

  in_base_initializer = 1;

  /* Initialize base classes.  */
  while (mem_inits
	 && FUNC5 (FUNC6 (mem_inits)) != FIELD_DECL)
    {
      tree subobject = FUNC6 (mem_inits);
      tree arguments = FUNC7 (mem_inits);

      /* If these initializations are taking place in a copy
	 constructor, the base class should probably be explicitly
	 initialized.  */
      if (extra_warnings && !arguments
	  && FUNC3 (current_function_decl)
	  && FUNC8 (FUNC0 (subobject)))
	FUNC17 (OPT_Wextra, "%Jbase class %q#T should be explicitly initialized in the "
		 "copy constructor",
		 current_function_decl, FUNC0 (subobject));

      /* If an explicit -- but empty -- initializer list was present,
	 treat it just like default initialization at this point.  */
      if (arguments == void_type_node)
	arguments = NULL_TREE;

      /* Initialize the base.  */
      if (FUNC1 (subobject))
	FUNC11 (subobject, arguments);
      else
	{
	  tree base_addr;

	  base_addr = FUNC9 (PLUS_EXPR, current_class_ptr,
				       subobject, 1);
	  FUNC12 (subobject, NULL_TREE,
			      FUNC10 (base_addr, NULL),
			      arguments,
			      LOOKUP_NORMAL);
	  FUNC13 (subobject, NULL_TREE);
	}

      mem_inits = FUNC4 (mem_inits);
    }
  in_base_initializer = 0;

  /* Initialize the vptrs.  */
  FUNC14 (current_class_ptr);

  /* Initialize the data members.  */
  while (mem_inits)
    {
      FUNC15 (FUNC6 (mem_inits),
			   FUNC7 (mem_inits));
      mem_inits = FUNC4 (mem_inits);
    }
}