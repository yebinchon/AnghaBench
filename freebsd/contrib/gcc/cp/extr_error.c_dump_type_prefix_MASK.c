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
typedef  int /*<<< orphan*/  tree ;
struct TYPE_2__ {void* padding; } ;

/* Variables and functions */
#define  ARRAY_TYPE 154 
#define  BLOCK_POINTER_TYPE 153 
#define  BOOLEAN_TYPE 152 
#define  BOUND_TEMPLATE_TEMPLATE_PARM 151 
#define  COMPLEX_TYPE 150 
#define  ENUMERAL_TYPE 149 
#define  ERROR_MARK 148 
#define  FUNCTION_TYPE 147 
#define  IDENTIFIER_NODE 146 
#define  INTEGER_TYPE 145 
#define  METHOD_TYPE 144 
#define  OFFSET_TYPE 143 
#define  POINTER_TYPE 142 
#define  REAL_TYPE 141 
#define  RECORD_TYPE 140 
#define  REFERENCE_TYPE 139 
#define  TEMPLATE_TEMPLATE_PARM 138 
#define  TEMPLATE_TYPE_PARM 137 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  TREE_LIST 136 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  TREE_VEC 135 
#define  TYPENAME_TYPE 134 
#define  TYPEOF_TYPE 133 
#define  TYPE_DECL 132 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
#define  UNION_TYPE 131 
#define  UNKNOWN_TYPE 130 
#define  VECTOR_TYPE 129 
#define  VOID_TYPE 128 
 int /*<<< orphan*/  cxx_pp ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 void* pp_before ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18 (tree t, int flags)
{
  if (FUNC5 (t))
    {
      t = FUNC4 (t);
      goto offset_type;
    }

  switch (FUNC0 (t))
    {
    case POINTER_TYPE:
      /* APPLE LOCAL blocks 6040305 */
    case BLOCK_POINTER_TYPE:
    case REFERENCE_TYPE:
      {
	tree sub = FUNC1 (t);

	FUNC18 (sub, flags);
	if (FUNC0 (sub) == ARRAY_TYPE)
	  {
	    FUNC14 (cxx_pp);
	    FUNC12 (cxx_pp);
	  }
	/* APPLE LOCAL begin blocks 6040305 */
	FUNC9 (cxx_pp, "&*^"[(FUNC0 (t) == POINTER_TYPE)
				    + (FUNC0 (t) == BLOCK_POINTER_TYPE)*2]);
	/* APPLE LOCAL end blocks 6040305 */
	FUNC8 (cxx_pp)->padding = pp_before;
	FUNC11 (cxx_pp, t);
      }
      break;

    case OFFSET_TYPE:
    offset_type:
      FUNC18 (FUNC1 (t), flags);
      if (FUNC0 (t) == OFFSET_TYPE)	/* pmfs deal with this in d_t_p */
	{
	  FUNC16 (cxx_pp);
	  if (FUNC0 (FUNC1 (t)) == ARRAY_TYPE)
	     FUNC12 (cxx_pp);
	  FUNC7 (FUNC3 (t), flags);
	  FUNC10 (cxx_pp);
	}
      FUNC13 (cxx_pp);
      FUNC11 (cxx_pp, t);
      FUNC8 (cxx_pp)->padding = pp_before;
      break;

      /* Can only be reached through function pointer -- this would not be
	 correct if FUNCTION_DECLs used it.  */
    case FUNCTION_TYPE:
      FUNC18 (FUNC1 (t), flags);
      FUNC16 (cxx_pp);
      FUNC12 (cxx_pp);
      break;

    case METHOD_TYPE:
      FUNC18 (FUNC1 (t), flags);
      FUNC16 (cxx_pp);
      FUNC12 (cxx_pp);
      FUNC6 (FUNC2 (t), flags);
      FUNC10 (cxx_pp);
      break;

    case ARRAY_TYPE:
      FUNC18 (FUNC1 (t), flags);
      break;

    case ENUMERAL_TYPE:
    case IDENTIFIER_NODE:
    case INTEGER_TYPE:
    case BOOLEAN_TYPE:
    case REAL_TYPE:
    case RECORD_TYPE:
    case TEMPLATE_TYPE_PARM:
    case TEMPLATE_TEMPLATE_PARM:
    case BOUND_TEMPLATE_TEMPLATE_PARM:
    case TREE_LIST:
    case TYPE_DECL:
    case TREE_VEC:
    case UNION_TYPE:
    case UNKNOWN_TYPE:
    case VOID_TYPE:
    case TYPENAME_TYPE:
    case COMPLEX_TYPE:
    case VECTOR_TYPE:
    case TYPEOF_TYPE:
      FUNC7 (t, flags);
      FUNC8 (cxx_pp)->padding = pp_before;
      break;

    default:
      FUNC17 (cxx_pp, t);
      /* fall through.  */
    case ERROR_MARK:
      FUNC15 (cxx_pp, "<typeprefixerror>");
      break;
    }
}