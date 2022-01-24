#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_20__ {int /*<<< orphan*/  enclosing_scope; } ;
typedef  TYPE_1__ cxx_pretty_printer ;

/* Variables and functions */
 int ADDR_EXPR ; 
#define  AGGR_INIT_EXPR 146 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  ARROW_EXPR 145 
#define  BASELINK 144 
#define  CALL_EXPR 143 
#define  CONST_CAST_EXPR 142 
#define  CONST_DECL 141 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  DYNAMIC_CAST_EXPR 140 
#define  EMPTY_CLASS_EXPR 139 
#define  FIELD_DECL 138 
#define  FUNCTION_DECL 137 
 int NOP_EXPR ; 
#define  OVERLOAD 136 
#define  PARM_DECL 135 
 int POINTER_TYPE ; 
#define  PSEUDO_DTOR_EXPR 134 
#define  REINTERPRET_CAST_EXPR 133 
#define  RESULT_DECL 132 
#define  STATIC_CAST_EXPR 131 
#define  TEMPLATE_DECL 130 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
#define  TYPEID_EXPR 129 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
#define  VAR_DECL 128 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC27 (cxx_pretty_printer *pp, tree t)
{
  enum tree_code code = FUNC3 (t);

  switch (code)
    {
    case AGGR_INIT_EXPR:
    case CALL_EXPR:
      {
	tree fun = FUNC4 (t, 0);
	tree args = FUNC4 (t, 1);
	tree saved_scope = pp->enclosing_scope;

	if (FUNC3 (fun) == ADDR_EXPR)
	  fun = FUNC4 (fun, 0);

	/* In templates, where there is no way to tell whether a given
	   call uses an actual member function.  So the parser builds
	   FUN as a COMPONENT_REF or a plain IDENTIFIER_NODE until
	   instantiation time.  */
	if (FUNC3 (fun) != FUNCTION_DECL)
	  ;
	else if (FUNC1 (fun))
	  {
	    tree object = code == AGGR_INIT_EXPR && FUNC0 (t)
	      ? FUNC4 (t, 2)
	      : FUNC6 (args);

	    while (FUNC3 (object) == NOP_EXPR)
	      object = FUNC4 (object, 0);

	    if (FUNC3 (object) == ADDR_EXPR)
	      object = FUNC4 (object, 0);

	    if (FUNC3 (FUNC5 (object)) != POINTER_TYPE)
	      {
		FUNC27 (pp, object);
		FUNC15 (pp);
	      }
	    else
	      {
		FUNC27 (pp, object);
		FUNC11 (pp);
	      }
	    args = FUNC2 (args);
	    pp->enclosing_scope = FUNC26 (FUNC5 (object));
	  }

	FUNC27 (pp, fun);
	pp->enclosing_scope = saved_scope;
	FUNC13 (pp, args);
      }
      if (code == AGGR_INIT_EXPR && FUNC0 (t))
	{
	  FUNC21 (pp, ',');
	  FUNC27 (pp, FUNC4 (t, 2));
	}
      break;

    case BASELINK:
    case VAR_DECL:
    case PARM_DECL:
    case FIELD_DECL:
    case FUNCTION_DECL:
    case OVERLOAD:
    case CONST_DECL:
    case TEMPLATE_DECL:
    case RESULT_DECL:
      FUNC19 (pp, t);
      break;

    case DYNAMIC_CAST_EXPR:
    case STATIC_CAST_EXPR:
    case REINTERPRET_CAST_EXPR:
    case CONST_CAST_EXPR:
      if (code == DYNAMIC_CAST_EXPR)
	FUNC18 (pp, "dynamic_cast");
      else if (code == STATIC_CAST_EXPR)
	FUNC18 (pp, "static_cast");
      else if (code == REINTERPRET_CAST_EXPR)
	FUNC18 (pp, "reinterpret_cast");
      else
	FUNC18 (pp, "const_cast");
      FUNC12 (pp);
      FUNC22 (pp, FUNC5 (t));
      FUNC16 (pp);
      FUNC24 (pp);
      FUNC17 (pp, FUNC4 (t, 0));
      FUNC25 (pp);
      break;

    case EMPTY_CLASS_EXPR:
      FUNC22 (pp, FUNC5 (t));
      FUNC24 (pp);
      FUNC25 (pp);
      break;

    case TYPEID_EXPR:
      t = FUNC4 (t, 0);
      FUNC18 (pp, "typeid");
      FUNC24 (pp);
      if (FUNC7 (t))
	FUNC22 (pp, t);
      else
	FUNC17 (pp, t);
      FUNC25 (pp);
      break;

    case PSEUDO_DTOR_EXPR:
      FUNC27 (pp, FUNC4 (t, 0));
      FUNC15 (pp);
      FUNC20 (pp, FUNC4 (t, 1));
      FUNC14 (pp);
      FUNC10 (pp);
      FUNC23 (pp, FUNC4 (t, 2));
      break;

    case ARROW_EXPR:
      FUNC27 (pp, FUNC4 (t, 0));
      FUNC11 (pp);
      break;

    default:
      FUNC9 (FUNC8 (pp), t);
      break;
    }
}