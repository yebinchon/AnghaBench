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
#define  ARRAY_REF 153 
#define  BASELINK 152 
 scalar_t__ FUNC0 (scalar_t__) ; 
#define  BIT_NOT_EXPR 151 
#define  CONST_DECL 150 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
#define  ENUMERAL_TYPE 149 
#define  ERROR_MARK 148 
#define  FIELD_DECL 147 
#define  FUNCTION_DECL 146 
#define  IDENTIFIER_NODE 145 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
#define  LABEL_DECL 144 
#define  NAMESPACE_DECL 143 
 int const FUNC12 (scalar_t__) ; 
#define  NON_DEPENDENT_EXPR 142 
 scalar_t__ NULL_TREE ; 
#define  OVERLOAD 141 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
#define  PARM_DECL 140 
#define  RECORD_TYPE 139 
#define  RESULT_DECL 138 
#define  SCOPE_REF 137 
#define  TEMPLATE_DECL 136 
#define  TEMPLATE_ID_EXPR 135 
 int TEMPLATE_PARM_INDEX ; 
#define  TEMPLATE_TYPE_PARM 134 
 int TFF_DECL_SPECIFIERS ; 
 int TFF_EXPR_IN_PARENS ; 
 int FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__,int) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
#define  TYPE_DECL 133 
#define  TYPE_EXPR 132 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
#define  UNBOUND_CLASS_TEMPLATE 131 
#define  UNION_TYPE 130 
#define  USING_DECL 129 
 scalar_t__ FUNC19 (scalar_t__) ; 
#define  VAR_DECL 128 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  cxx_pp ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 () ; 
 scalar_t__ FUNC31 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC32 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC47 (tree t, int flags)
{
  if (t == NULL_TREE)
    return;

  switch (FUNC15 (t))
    {
    case TYPE_DECL:
      /* Don't say 'typedef class A' */
      if (FUNC2 (t))
	{
	  if ((flags & TFF_DECL_SPECIFIERS)
	      && FUNC15 (FUNC17 (t)) == TEMPLATE_TYPE_PARM)
	    /* Say `class T' not just `T'.  */
	    FUNC38 (cxx_pp, "class");

	  FUNC28 (FUNC17 (t), flags);
	  break;
	}
      if (flags & TFF_DECL_SPECIFIERS)
	FUNC38 (cxx_pp, "typedef");
      FUNC25 (t, FUNC10 (t)
			? FUNC10 (t) : FUNC17 (t),
			flags);
      break;

    case VAR_DECL:
      if (FUNC9 (t) && FUNC20 (FUNC9 (t)))
	{
	  FUNC44 (cxx_pp, "vtable for ");
	  FUNC29 (FUNC18 (FUNC4 (t)));
	  FUNC28 (FUNC4 (t), flags);
	  break;
	}
      /* Else fall through.  */
    case FIELD_DECL:
    case PARM_DECL:
      FUNC25 (t, FUNC17 (t), flags);
      break;

    case RESULT_DECL:
      FUNC44 (cxx_pp, "<return value> ");
      FUNC25 (t, FUNC17 (t), flags);
      break;

    case NAMESPACE_DECL:
      if (flags & TFF_DECL_SPECIFIERS)
	FUNC36 (cxx_pp, t);
      else
	{
	  FUNC24 (FUNC1 (t), flags);
	  if (FUNC9 (t) == NULL_TREE)
	    FUNC43 (cxx_pp, "<unnamed>");
	  else
	    FUNC41 (cxx_pp, FUNC9 (t));
	}
      break;

    case SCOPE_REF:
      FUNC42 (cxx_pp, t);
      break;

    case ARRAY_REF:
      FUNC47 (FUNC16 (t, 0), flags);
      FUNC39 (cxx_pp);
      FUNC47 (FUNC16 (t, 1), flags);
      FUNC40 (cxx_pp);
      break;

      /* So that we can do dump_decl on an aggr type.  */
    case RECORD_TYPE:
    case UNION_TYPE:
    case ENUMERAL_TYPE:
      FUNC28 (t, flags);
      break;

    case BIT_NOT_EXPR:
      /* This is a pseudo destructor call which has not been folded into
	 a PSEUDO_DTOR_EXPR yet.  */
      FUNC35 (cxx_pp);
      FUNC28 (FUNC16 (t, 0), flags);
      break;

    case TYPE_EXPR:
      FUNC30 ();
      break;

      /* These special cases are duplicated here so that other functions
	 can feed identifiers to error and get them demangled properly.  */
    case IDENTIFIER_NODE:
      if (FUNC11 (t))
	{
	  FUNC38 (cxx_pp, "operator");
	  /* Not exactly IDENTIFIER_TYPE_VALUE.  */
	  FUNC28 (FUNC17 (t), flags);
	  break;
	}
      else
	FUNC41 (cxx_pp, t);
      break;

    case OVERLOAD:
      if (FUNC13 (t))
	{
	  t = FUNC14 (t);
	  if (FUNC3 (t))
	    {
	      FUNC28 (FUNC4 (t), flags);
	      FUNC34 (cxx_pp);
	    }
	  else if (FUNC4 (t))
	    {
	      FUNC47 (FUNC4 (t), flags);
	      FUNC34 (cxx_pp);
	    }
	  FUNC47 (FUNC9 (t), flags);
	  break;
	}

      /* If there's only one function, just treat it like an ordinary
	 FUNCTION_DECL.  */
      t = FUNC14 (t);
      /* Fall through.  */

    case FUNCTION_DECL:
      if (! FUNC8 (t))
	FUNC43 (cxx_pp, "<built-in>");
      else if (FUNC5 (t) || FUNC6 (t))
	FUNC23 (t);
      else
	FUNC22 (t, flags);
      break;

    case TEMPLATE_DECL:
      FUNC27 (t, flags);
      break;

    case TEMPLATE_ID_EXPR:
      {
	tree name = FUNC16 (t, 0);

	if (FUNC32 (name))
	  name = FUNC9 (FUNC31 (name));
	FUNC47 (name, flags);
	FUNC33 (cxx_pp);
	if (FUNC16 (t, 1))
	  FUNC26 (FUNC16 (t, 1), flags);
	FUNC37 (cxx_pp);
      }
      break;

    case LABEL_DECL:
      FUNC41 (cxx_pp, FUNC9 (t));
      break;

    case CONST_DECL:
      if ((FUNC17 (t) != NULL_TREE && FUNC12 (t) == ENUMERAL_TYPE)
	  || (FUNC7 (t) &&
	      FUNC15 (FUNC7 (t)) == TEMPLATE_PARM_INDEX))
	FUNC25 (t, FUNC17 (t), flags);
      else if (FUNC9 (t))
	FUNC47 (FUNC9 (t), flags);
      else if (FUNC7 (t))
	FUNC21 (FUNC7 (t), flags | TFF_EXPR_IN_PARENS);
      else
	FUNC43 (cxx_pp, "<enumerator>");
      break;

    case USING_DECL:
      FUNC38 (cxx_pp, "using");
      FUNC28 (FUNC19 (t), flags);
      FUNC34 (cxx_pp);
      FUNC47 (FUNC9 (t), flags);
      break;

    case BASELINK:
      FUNC47 (FUNC0 (t), flags);
      break;

    case NON_DEPENDENT_EXPR:
      FUNC21 (t, flags);
      break;

    case TEMPLATE_TYPE_PARM:
      if (flags & TFF_DECL_SPECIFIERS)
	FUNC36 (cxx_pp, t);
      else
	FUNC45 (cxx_pp, t);
      break;

    case UNBOUND_CLASS_TEMPLATE:
      FUNC28 (t, flags);
      break;

    default:
      FUNC46 (cxx_pp, t);
      /* Fall through to error.  */

    case ERROR_MARK:
      FUNC43 (cxx_pp, "<declaration error>");
      break;
    }
}