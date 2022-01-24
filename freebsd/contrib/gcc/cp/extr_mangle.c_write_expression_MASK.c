#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_6__ {int need_abi_warning; } ;
struct TYPE_5__ {scalar_t__ identifier; char* mangled_name; } ;
struct TYPE_4__ {scalar_t__ identifier; int arity; char* mangled_name; } ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 int BASELINK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int BOUND_TEMPLATE_TEMPLATE_PARM ; 
#define  CALL_EXPR 132 
#define  CAST_EXPR 131 
 int COND_EXPR ; 
#define  CONST_CAST_EXPR 130 
 int CONST_DECL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 TYPE_3__ G ; 
 scalar_t__ IDENTIFIER_NODE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int LAST_CPLUS_TREE_CODE ; 
 scalar_t__ NON_LVALUE_EXPR ; 
 scalar_t__ NOP_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int PTRMEM_CST ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ REFERENCE_TYPE ; 
#define  SCOPE_REF 129 
 scalar_t__ SIZEOF_EXPR ; 
#define  STATIC_CAST_EXPR 128 
 scalar_t__ TEMPLATE_ID_EXPR ; 
 int TEMPLATE_PARM_INDEX ; 
 int TEMPLATE_TEMPLATE_PARM ; 
 int TEMPLATE_TYPE_PARM ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (int) ; 
 scalar_t__ FUNC9 (scalar_t__,int) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (int) ; 
 TYPE_2__* assignment_operator_name_info ; 
 scalar_t__ FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 TYPE_1__* operator_name_info ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 scalar_t__ tcc_constant ; 
 int /*<<< orphan*/  FUNC19 (char) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (char const*) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__) ; 

__attribute__((used)) static void
FUNC29 (tree expr)
{
  enum tree_code code;

  code = FUNC6 (expr);

  /* Skip NOP_EXPRs.  They can occur when (say) a pointer argument
     is converted (via qualification conversions) to another
     type.  */
  while (FUNC6 (expr) == NOP_EXPR
	 || FUNC6 (expr) == NON_LVALUE_EXPR)
    {
      expr = FUNC9 (expr, 0);
      code = FUNC6 (expr);
    }

  if (code == BASELINK)
    {
      expr = FUNC0 (expr);
      code = FUNC6 (expr);
    }

  /* Handle pointers-to-members by making them look like expression
     nodes.  */
  if (code == PTRMEM_CST)
    {
      expr = FUNC14 (ADDR_EXPR,
		       FUNC15 (/*type=*/NULL_TREE,
					     FUNC4 (expr),
					     FUNC5 (expr),
					     /*template_p=*/false));
      code = FUNC6 (expr);
    }

  /* Handle template parameters.  */
  if (code == TEMPLATE_TYPE_PARM
      || code == TEMPLATE_TEMPLATE_PARM
      || code == BOUND_TEMPLATE_TEMPLATE_PARM
      || code == TEMPLATE_PARM_INDEX)
    FUNC27 (expr);
  /* Handle literals.  */
  else if (FUNC7 (code) == tcc_constant
	   || (FUNC13 (2) && code == CONST_DECL))
    FUNC25 (expr);
  else if (FUNC1 (expr))
    {
      /* G++ 3.2 incorrectly mangled non-type template arguments of
	 enumeration type using their names.  */
      if (code == CONST_DECL)
	G.need_abi_warning = 1;
      FUNC19 ('L');
      FUNC22 (expr, false);
      FUNC19 ('E');
    }
  else if (FUNC6 (expr) == SIZEOF_EXPR
	   && FUNC12 (FUNC9 (expr, 0)))
    {
      FUNC24 ("st");
      FUNC28 (FUNC9 (expr, 0));
    }
  else if (FUNC13 (2) && FUNC6 (expr) == SCOPE_REF)
    {
      tree scope = FUNC9 (expr, 0);
      tree member = FUNC9 (expr, 1);

      /* If the MEMBER is a real declaration, then the qualifying
	 scope was not dependent.  Ideally, we would not have a
	 SCOPE_REF in those cases, but sometimes we do.  If the second
	 argument is a DECL, then the name must not have been
	 dependent.  */
      if (FUNC1 (member))
	FUNC29 (member);
      else
	{
	  tree template_args;

	  FUNC24 ("sr");
	  FUNC28 (scope);
	  /* If MEMBER is a template-id, separate the template
	     from the arguments.  */
	  if (FUNC6 (member) == TEMPLATE_ID_EXPR)
	    {
	      template_args = FUNC9 (member, 1);
	      member = FUNC9 (member, 0);
	    }
	  else
	    template_args = NULL_TREE;
	  /* Write out the name of the MEMBER.  */
	  if (FUNC3 (member))
	    FUNC20 (FUNC10 (member));
	  else if (FUNC2 (member))
	    {
	      int i;
	      const char *mangled_name = NULL;

	      /* Unfortunately, there is no easy way to go from the
		 name of the operator back to the corresponding tree
		 code.  */
	      for (i = 0; i < LAST_CPLUS_TREE_CODE; ++i)
		if (operator_name_info[i].identifier == member)
		  {
		    /* The ABI says that we prefer binary operator
		       names to unary operator names.  */
		    if (operator_name_info[i].arity == 2)
		      {
			mangled_name = operator_name_info[i].mangled_name;
			break;
		      }
		    else if (!mangled_name)
		      mangled_name = operator_name_info[i].mangled_name;
		  }
		else if (assignment_operator_name_info[i].identifier
			 == member)
		  {
		    mangled_name
		      = assignment_operator_name_info[i].mangled_name;
		    break;
		  }
	      FUNC24 (mangled_name);
	    }
	  else
	    FUNC23 (member);
	  /* Write out the template arguments.  */
	  if (template_args)
	    FUNC26 (template_args);
	}
    }
  else
    {
      int i;

      /* When we bind a variable or function to a non-type template
	 argument with reference type, we create an ADDR_EXPR to show
	 the fact that the entity's address has been taken.  But, we
	 don't actually want to output a mangling code for the `&'.  */
      if (FUNC6 (expr) == ADDR_EXPR
	  && FUNC10 (expr)
	  && FUNC6 (FUNC10 (expr)) == REFERENCE_TYPE)
	{
	  expr = FUNC9 (expr, 0);
	  if (FUNC1 (expr))
	    {
	      FUNC29 (expr);
	      return;
	    }

	  code = FUNC6 (expr);
	}

      /* If it wasn't any of those, recursively expand the expression.  */
      FUNC24 (operator_name_info[(int) code].mangled_name);

      switch (code)
	{
	case CALL_EXPR:
	  FUNC18 ("call_expr cannot be mangled due to a defect in the C++ ABI");
	  break;

	case CAST_EXPR:
	  FUNC28 (FUNC10 (expr));
	  /* There is no way to mangle a zero-operand cast like
	     "T()".  */
	  if (!FUNC9 (expr, 0))
	    FUNC18 ("zero-operand casts cannot be mangled due to a defect "
		   "in the C++ ABI");
	  else
	    FUNC29 (FUNC11 (FUNC9 (expr, 0)));
	  break;

	case STATIC_CAST_EXPR:
	case CONST_CAST_EXPR:
	  FUNC28 (FUNC10 (expr));
	  FUNC29 (FUNC9 (expr, 0));
	  break;


	/* Handle pointers-to-members specially.  */
	case SCOPE_REF:
	  FUNC28 (FUNC9 (expr, 0));
	  if (FUNC6 (FUNC9 (expr, 1)) == IDENTIFIER_NODE)
	    FUNC23 (FUNC9 (expr, 1));
	  else if (FUNC6 (FUNC9 (expr, 1)) == TEMPLATE_ID_EXPR)
	    {
	      tree template_id;
	      tree name;

	      template_id = FUNC9 (expr, 1);
	      name = FUNC9 (template_id, 0);
	      /* FIXME: What about operators?  */
	      FUNC17 (FUNC6 (name) == IDENTIFIER_NODE);
	      FUNC23 (FUNC9 (template_id, 0));
	      FUNC26 (FUNC9 (template_id, 1));
	    }
	  else
	    {
	      /* G++ 3.2 incorrectly put out both the "sr" code and
		 the nested name of the qualified name.  */
	      G.need_abi_warning = 1;
	      FUNC21 (FUNC9 (expr, 1));
	    }
	  break;

	default:
	  for (i = 0; i < FUNC8 (code); ++i)
	    {
	      tree operand = FUNC9 (expr, i);
	      /* As a GNU extension, the middle operand of a
		 conditional may be omitted.  Since expression
		 manglings are supposed to represent the input token
		 stream, there's no good way to mangle such an
		 expression without extending the C++ ABI.  */
	      if (code == COND_EXPR && i == 1 && !operand)
		{
		  FUNC16 ("omitted middle operand to %<?:%> operand "
			 "cannot be mangled");
		  continue;
		}
	      FUNC29 (operand);
	    }
	}
    }
}