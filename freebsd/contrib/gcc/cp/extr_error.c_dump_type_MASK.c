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
#define  ARRAY_TYPE 157 
 scalar_t__ FUNC0 (scalar_t__) ; 
#define  BLOCK_POINTER_TYPE 156 
#define  BOOLEAN_TYPE 155 
#define  BOUND_TEMPLATE_TEMPLATE_PARM 154 
#define  COMPLEX_TYPE 153 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
#define  ENUMERAL_TYPE 152 
#define  ERROR_MARK 151 
#define  FUNCTION_TYPE 150 
#define  IDENTIFIER_NODE 149 
#define  INTEGER_TYPE 148 
#define  METHOD_TYPE 147 
#define  NAMESPACE_DECL 146 
 scalar_t__ NULL_TREE ; 
#define  OFFSET_TYPE 145 
#define  POINTER_TYPE 144 
#define  REAL_TYPE 143 
#define  RECORD_TYPE 142 
#define  REFERENCE_TYPE 141 
#define  TEMPLATE_DECL 140 
#define  TEMPLATE_TEMPLATE_PARM 139 
#define  TEMPLATE_TYPE_PARM 138 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int TFF_CHASE_TYPEDEF ; 
 int TFF_DECL_SPECIFIERS ; 
 int TFF_EXPR_IN_PARENS ; 
#define  TREE_BINFO 137 
 int FUNC4 (scalar_t__) ; 
#define  TREE_LIST 136 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
#define  TYPENAME_TYPE 135 
#define  TYPEOF_TYPE 134 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
#define  TYPE_DECL 133 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
#define  UNBOUND_CLASS_TEMPLATE 132 
#define  UNION_TYPE 131 
#define  UNKNOWN_TYPE 130 
#define  VECTOR_TYPE 129 
#define  VOID_TYPE 128 
 int /*<<< orphan*/  cxx_pp ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC35 (tree t, int flags)
{
  if (t == NULL_TREE)
    return;

  if (FUNC12 (t))
    goto offset_type;

  switch (FUNC4 (t))
    {
    case UNKNOWN_TYPE:
      FUNC32 (cxx_pp, "<unresolved overloaded function type>");
      break;

    case TREE_LIST:
      /* A list of function parms.  */
      FUNC17 (t, flags);
      break;

    case IDENTIFIER_NODE:
      FUNC30 (cxx_pp, t);
      break;

    case TREE_BINFO:
      FUNC35 (FUNC0 (t), flags);
      break;

    case RECORD_TYPE:
    case UNION_TYPE:
    case ENUMERAL_TYPE:
      FUNC14 (t, flags);
      break;

    case TYPE_DECL:
      if (flags & TFF_CHASE_TYPEDEF)
	{
	  FUNC35 (FUNC2 (t)
		     ? FUNC2 (t) : FUNC5 (t), flags);
	  break;
	}
      /* Else fall through.  */

    case TEMPLATE_DECL:
    case NAMESPACE_DECL:
      FUNC15 (t, flags & ~TFF_DECL_SPECIFIERS);
      break;

    case INTEGER_TYPE:
    case REAL_TYPE:
    case VOID_TYPE:
    case BOOLEAN_TYPE:
    case COMPLEX_TYPE:
    case VECTOR_TYPE:
      FUNC33 (cxx_pp, t);
      break;

    case TEMPLATE_TEMPLATE_PARM:
      /* For parameters inside template signature.  */
      if (FUNC10 (t))
	FUNC30 (cxx_pp, FUNC10 (t));
      else
	FUNC23 (cxx_pp, t);
      break;

    case BOUND_TEMPLATE_TEMPLATE_PARM:
      {
	tree args = FUNC13 (t);
	FUNC25 (cxx_pp, t);
	FUNC30 (cxx_pp, FUNC10 (t));
	FUNC22 (cxx_pp);
	FUNC18 (args, flags);
	FUNC26 (cxx_pp);
      }
      break;

    case TEMPLATE_TYPE_PARM:
      FUNC25 (cxx_pp, t);
      if (FUNC10 (t))
	FUNC30 (cxx_pp, FUNC10 (t));
      else
	FUNC23
	  (cxx_pp, FUNC3 (t));
      break;

      /* This is not always necessary for pointers and such, but doing this
	 reduces code size.  */
    case ARRAY_TYPE:
    case POINTER_TYPE:
      /* APPLE LOCAL blocks 6040305 */
    case BLOCK_POINTER_TYPE:
    case REFERENCE_TYPE:
    case OFFSET_TYPE:
    offset_type:
    case FUNCTION_TYPE:
    case METHOD_TYPE:
    {
      FUNC19 (t, flags);
      FUNC20 (t, flags);
      break;
    }
    case TYPENAME_TYPE:
      FUNC25 (cxx_pp, t);
      FUNC27 (cxx_pp,
			 FUNC7 (t) ? "enum"
			 : FUNC6 (t) ? "class"
			 : "typename");
      FUNC21 (t, flags);
      break;

    case UNBOUND_CLASS_TEMPLATE:
      FUNC35 (FUNC9 (t), flags);
      FUNC24 (cxx_pp);
      FUNC27 (cxx_pp, "template");
      FUNC35 (FUNC1 (FUNC11 (t)), flags);
      break;

    case TYPEOF_TYPE:
      FUNC27 (cxx_pp, "__typeof__");
      FUNC31 (cxx_pp);
      FUNC28 (cxx_pp);
      FUNC16 (FUNC8 (t), flags & ~TFF_EXPR_IN_PARENS);
      FUNC29 (cxx_pp);
      break;

    default:
      FUNC34 (cxx_pp, t);
      /* Fall through to error.  */

    case ERROR_MARK:
      FUNC32 (cxx_pp, "<type error>");
      break;
    }
}