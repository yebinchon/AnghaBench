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
typedef  int /*<<< orphan*/ * tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  int /*<<< orphan*/  cxx_pretty_printer ;

/* Variables and functions */
#define  BASELINK 149 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
#define  CONST_DECL 148 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
#define  ENUMERAL_TYPE 147 
#define  FIELD_DECL 146 
#define  FUNCTION_DECL 145 
#define  IDENTIFIER_NODE 144 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
#define  LABEL_DECL 143 
#define  NAMESPACE_DECL 142 
#define  OVERLOAD 141 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
#define  PARM_DECL 140 
#define  RECORD_TYPE 139 
#define  RESULT_DECL 138 
#define  TEMPLATE_DECL 137 
#define  TEMPLATE_ID_EXPR 136 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
#define  TEMPLATE_PARM_INDEX 135 
#define  TEMPLATE_TEMPLATE_PARM 134 
#define  TEMPLATE_TYPE_PARM 133 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
#define  TYPE_DECL 132 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
#define  UNBOUND_CLASS_TEMPLATE 131 
#define  UNION_TYPE 130 
#define  USING_DECL 129 
#define  VAR_DECL 128 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC18 (cxx_pretty_printer *pp, tree t)
{
  enum tree_code code = FUNC5 (t);
  switch (code)
    {
    case RESULT_DECL:
      FUNC14 (pp, "<return-value>");
      break;

    case OVERLOAD:
      t = FUNC3 (t);
    case VAR_DECL:
    case PARM_DECL:
    case CONST_DECL:
    case TYPE_DECL:
    case FUNCTION_DECL:
    case NAMESPACE_DECL:
    case FIELD_DECL:
    case LABEL_DECL:
    case USING_DECL:
    case TEMPLATE_DECL:
      t = FUNC1 (t);

    case IDENTIFIER_NODE:
      if (t == NULL)
	FUNC14 (pp, "<unnamed>");
      else if (FUNC2 (t))
	FUNC13 (pp, t);
      else
	{
	  if (FUNC10 (t))
	    {
	      FUNC11 (pp);
	      /* FIXME: Why is this necessary? */
	      if (FUNC6 (t))
		t = FUNC9 (FUNC6 (t));
	    }
	  FUNC16 (pp, t);
	}
      break;

    case TEMPLATE_ID_EXPR:
      FUNC15 (pp, t);
      break;

    case BASELINK:
      FUNC18 (pp, FUNC0 (t));
      break;

    case RECORD_TYPE:
    case UNION_TYPE:
    case ENUMERAL_TYPE:
      FUNC18 (pp, FUNC8 (t));
      break;

    case TEMPLATE_TYPE_PARM:
    case TEMPLATE_TEMPLATE_PARM:
      if (FUNC7 (t))
	FUNC18 (pp, FUNC7 (t));
      else
	FUNC12 (pp, t);
      break;

    case TEMPLATE_PARM_INDEX:
      FUNC18 (pp, FUNC4 (t));
      break;

    case UNBOUND_CLASS_TEMPLATE:
      FUNC18 (pp, FUNC8 (t));
      break;

    default:
      FUNC17 (pp, t);
      break;
    }
}