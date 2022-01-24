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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  COMPONENT_REF ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FIELD_DECL ; 
 int LOOKUP_NONVIRTUAL ; 
 int LOOKUP_NORMAL ; 
 int /*<<< orphan*/  MODIFY_EXPR ; 
 int /*<<< orphan*/  NOP_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 scalar_t__ REFERENCE_TYPE ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int TYPE_QUAL_CONST ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC19 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC22 (scalar_t__) ; 
 scalar_t__ FUNC23 (scalar_t__,int) ; 
 int FUNC24 (scalar_t__) ; 
 scalar_t__ current_class_ref ; 
 scalar_t__ current_class_type ; 
 int /*<<< orphan*/  FUNC25 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__) ; 
 scalar_t__ FUNC29 (scalar_t__) ; 
 scalar_t__ void_type_node ; 

__attribute__((used)) static void
FUNC30 (tree fndecl)
{
  tree parm = FUNC7 (FUNC3 (fndecl));
  tree compound_stmt;

  compound_stmt = FUNC15 (0);
  parm = FUNC22 (parm);

  if (FUNC12 (current_class_type)
      && FUNC29 (current_class_type))
    /* Don't copy the padding byte; it might not have been allocated
       if *this is a base subobject.  */;
  else if (FUNC12 (current_class_type))
    {
      tree t = FUNC16 (MODIFY_EXPR, void_type_node, current_class_ref, parm);
      FUNC27 (t);
    }
  else
    {
      tree fields;
      int cvquals = FUNC24 (FUNC9 (parm));
      int i;
      tree binfo, base_binfo;

      /* Assign to each of the direct base classes.  */
      for (binfo = FUNC10 (current_class_type), i = 0;
	   FUNC1 (binfo, i, base_binfo); i++)
	{
	  tree converted_parm;

	  /* We must convert PARM directly to the base class
	     explicitly since the base class may be ambiguous.  */
	  converted_parm = FUNC18 (PLUS_EXPR, parm, base_binfo, 1);
	  /* Call the base class assignment operator.  */
	  FUNC27
	    (FUNC20 (current_class_ref,
					FUNC14 (NOP_EXPR),
					FUNC21 (NULL_TREE,
							 converted_parm),
					base_binfo,
					LOOKUP_NORMAL | LOOKUP_NONVIRTUAL));
	}

      /* Assign to each of the non-static data members.  */
      for (fields = FUNC11 (current_class_type);
	   fields;
	   fields = FUNC7 (fields))
	{
	  tree comp = current_class_ref;
	  tree init = parm;
	  tree field = fields;
	  tree expr_type;
	  int quals;

	  if (FUNC8 (field) != FIELD_DECL || FUNC4 (field))
	    continue;

	  expr_type = FUNC9 (field);

	  if (FUNC2 (expr_type))
	    {
	      FUNC25 ("non-static const member %q#D, can't use default "
		     "assignment operator", field);
	      continue;
	    }
	  else if (FUNC8 (expr_type) == REFERENCE_TYPE)
	    {
	      FUNC25 ("non-static reference member %q#D, can't use "
		     "default assignment operator", field);
	      continue;
	    }

	  if (FUNC6 (field))
	    {
	      if (FUNC13 (FUNC6 (field)))
		continue;
	    }
	  else if (FUNC0 (expr_type)
		   && FUNC11 (expr_type) != NULL_TREE)
	    /* Just use the field; anonymous types can't have
	       nontrivial copy ctors or assignment ops.  */;
	  else
	    continue;

	  comp = FUNC17 (COMPONENT_REF, expr_type, comp, field, NULL_TREE);

	  /* Compute the type of init->field  */
	  quals = cvquals;
	  if (FUNC5 (field))
	    quals &= ~TYPE_QUAL_CONST;
	  expr_type = FUNC23 (expr_type, quals);

	  init = FUNC17 (COMPONENT_REF, expr_type, init, field, NULL_TREE);

	  if (FUNC6 (field))
	    init = FUNC19 (comp, NOP_EXPR, init);
	  else
	    init = FUNC16 (MODIFY_EXPR, FUNC9 (comp), comp, init);
	  FUNC27 (init);
	}
    }
  FUNC28 (current_class_ref);
  FUNC26 (compound_stmt);
}