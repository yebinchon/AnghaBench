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
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  COND_EXPR ; 
 int /*<<< orphan*/  EQ_EXPR ; 
 int /*<<< orphan*/  INDIRECT_REF ; 
 int /*<<< orphan*/  NOP_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ base_ctor_identifier ; 
 scalar_t__ base_dtor_identifier ; 
 int /*<<< orphan*/  boolean_type_node ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 scalar_t__ complete_ctor_identifier ; 
 scalar_t__ complete_dtor_identifier ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  current_class_type ; 
 scalar_t__ current_in_charge_parm ; 
 int /*<<< orphan*/  current_vtt_parm ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 scalar_t__ deleting_dtor_identifier ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int integer_zero_node ; 
 scalar_t__ FUNC20 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC22 (scalar_t__,scalar_t__,scalar_t__) ; 

tree
FUNC23 (tree instance, tree name, tree args,
			   tree binfo, int flags)
{
  tree fns;
  /* The type of the subobject to be constructed or destroyed.  */
  tree class_type;

  FUNC19 (name == complete_ctor_identifier
	      || name == base_ctor_identifier
	      || name == complete_dtor_identifier
	      || name == base_dtor_identifier
	      || name == deleting_dtor_identifier
	      || name == FUNC8 (NOP_EXPR));
  if (FUNC7 (binfo))
    {
      /* Resolve the name.  */
      if (!FUNC16 (binfo, NULL_TREE))
	return error_mark_node;

      binfo = FUNC6 (binfo);
    }

  FUNC19 (binfo != NULL_TREE);

  class_type = FUNC1 (binfo);

  /* Handle the special case where INSTANCE is NULL_TREE.  */
  if (name == complete_ctor_identifier && !instance)
    {
      instance = FUNC13 (FUNC15 (class_type), 0);
      instance = FUNC9 (INDIRECT_REF, class_type, instance);
    }
  else
    {
      if (name == complete_dtor_identifier
	  || name == base_dtor_identifier
	  || name == deleting_dtor_identifier)
	FUNC19 (args == NULL_TREE);

      /* Convert to the base class, if necessary.  */
      if (!FUNC21
	  (FUNC5 (instance), FUNC1 (binfo)))
	{
	  if (name != FUNC8 (NOP_EXPR))
	    /* For constructors and destructors, either the base is
	       non-virtual, or it is virtual but we are doing the
	       conversion from a constructor or destructor for the
	       complete object.  In either case, we can convert
	       statically.  */
	    instance = FUNC17 (instance, binfo);
	  else
	    /* However, for assignment operators, we must convert
	       dynamically if the base is virtual.  */
	    instance = FUNC12 (PLUS_EXPR, instance,
					binfo, /*nonnull=*/1);
	}
    }

  FUNC19 (instance != NULL_TREE);

  fns = FUNC20 (binfo, name, 1);

  /* When making a call to a constructor or destructor for a subobject
     that uses virtual base classes, pass down a pointer to a VTT for
     the subobject.  */
  if ((name == base_ctor_identifier
       || name == base_dtor_identifier)
      && FUNC2 (class_type))
    {
      tree vtt;
      tree sub_vtt;

      /* If the current function is a complete object constructor
	 or destructor, then we fetch the VTT directly.
	 Otherwise, we look it up using the VTT we were given.  */
      vtt = FUNC4 (FUNC3 (current_class_type));
      vtt = FUNC18 (vtt);
      vtt = FUNC11 (COND_EXPR, FUNC5 (vtt),
		    FUNC10 (EQ_EXPR, boolean_type_node,
			    current_in_charge_parm, integer_zero_node),
		    current_vtt_parm,
		    vtt);
      FUNC19 (FUNC0 (binfo));
      sub_vtt = FUNC10 (PLUS_EXPR, FUNC5 (vtt), vtt,
			FUNC0 (binfo));

      args = FUNC22 (NULL_TREE, sub_vtt, args);
    }

  return FUNC14 (instance, fns, args,
				FUNC6 (FUNC1 (binfo)),
				flags, /*fn=*/NULL);
}