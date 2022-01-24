#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_57__   TYPE_3__ ;
typedef  struct TYPE_56__   TYPE_2__ ;
typedef  struct TYPE_55__   TYPE_1__ ;
typedef  struct TYPE_54__   TYPE_19__ ;

/* Type definitions */
typedef  TYPE_3__* tree ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_56__ {int /*<<< orphan*/  rtl; } ;
struct TYPE_57__ {TYPE_2__ decl_with_rtl; } ;
struct TYPE_55__ {TYPE_3__* (* type_for_mode ) (int /*<<< orphan*/ ,int) ;TYPE_3__* (* unsigned_type ) (TYPE_3__*) ;TYPE_3__* (* signed_type ) (TYPE_3__*) ;} ;
struct TYPE_54__ {TYPE_1__ types; } ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
#define  ASHIFT 143 
#define  ASHIFTRT 142 
#define  CONST 141 
#define  CONST_DOUBLE 140 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  CONST_INT 139 
#define  CONST_VECTOR 138 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
#define  DIV 137 
 int const FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HOST_BITS_PER_WIDE_INT ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
#define  LSHIFTRT 136 
 int /*<<< orphan*/  LSHIFT_EXPR ; 
#define  MINUS 135 
 int /*<<< orphan*/  MINUS_EXPR ; 
#define  MULT 134 
 int /*<<< orphan*/  MULT_EXPR ; 
#define  NEG 133 
 int /*<<< orphan*/  NEGATE_EXPR ; 
 TYPE_3__* NULL_TREE ; 
#define  PLUS 132 
 int /*<<< orphan*/  PLUS_EXPR ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  REAL_TYPE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RSHIFT_EXPR ; 
#define  SIGN_EXTEND 131 
#define  SYMBOL_REF 130 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 TYPE_3__* FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  TRUNC_DIV_EXPR ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
#define  UDIV 129 
 int /*<<< orphan*/  VAR_DECL ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
#define  ZERO_EXTEND 128 
 TYPE_3__* FUNC16 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_3__*,TYPE_3__*) ; 
 TYPE_3__* FUNC17 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_3__*) ; 
 TYPE_3__* FUNC18 (TYPE_3__*) ; 
 TYPE_3__* FUNC19 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC20 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC21 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC23 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_3__*) ; 
 TYPE_3__* FUNC24 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_3__*,TYPE_3__*) ; 
 TYPE_3__* FUNC25 (TYPE_3__*,TYPE_3__*) ; 
 TYPE_19__ lang_hooks ; 
 TYPE_3__* FUNC26 (TYPE_3__*) ; 
 TYPE_3__* FUNC27 (TYPE_3__*) ; 
 TYPE_3__* FUNC28 (TYPE_3__*) ; 
 TYPE_3__* FUNC29 (TYPE_3__*) ; 
 TYPE_3__* FUNC30 (int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC31 (TYPE_3__*,TYPE_3__*,TYPE_3__*) ; 

tree
FUNC32 (tree type, rtx x)
{
  tree t;

  switch (FUNC4 (x))
    {
    case CONST_INT:
      {
	HOST_WIDE_INT hi = 0;

	if (FUNC7 (x) < 0
	    && !(FUNC14 (type)
		 && (FUNC6 (FUNC13 (type))
		     < HOST_BITS_PER_WIDE_INT)))
	  hi = -1;
      
	t = FUNC19 (type, FUNC7 (x), hi);
	
	return t;
      }
      
    case CONST_DOUBLE:
      if (FUNC5 (x) == VOIDmode)
	t = FUNC19 (type,
				FUNC1 (x), FUNC0 (x));
      else
	{
	  REAL_VALUE_TYPE d;

	  FUNC9 (d, x);
	  t = FUNC20 (type, d);
	}

      return t;

    case CONST_VECTOR:
      {
	int units = FUNC3 (x);
	tree itype = FUNC12 (type);
	tree t = NULL_TREE;
	int i;


	/* Build a tree with vector elements.  */
	for (i = units - 1; i >= 0; --i)
	  {
	    rtx elt = FUNC2 (x, i);
	    t = FUNC31 (NULL_TREE, FUNC32 (itype, elt), t);
	  }

	return FUNC21 (type, t);
      }

    case PLUS:
      return FUNC24 (PLUS_EXPR, type, FUNC32 (type, FUNC15 (x, 0)),
			  FUNC32 (type, FUNC15 (x, 1)));

    case MINUS:
      return FUNC24 (MINUS_EXPR, type, FUNC32 (type, FUNC15 (x, 0)),
			  FUNC32 (type, FUNC15 (x, 1)));

    case NEG:
      return FUNC23 (NEGATE_EXPR, type, FUNC32 (type, FUNC15 (x, 0)));

    case MULT:
      return FUNC24 (MULT_EXPR, type, FUNC32 (type, FUNC15 (x, 0)),
			  FUNC32 (type, FUNC15 (x, 1)));

    case ASHIFT:
      return FUNC24 (LSHIFT_EXPR, type, FUNC32 (type, FUNC15 (x, 0)),
			  FUNC32 (type, FUNC15 (x, 1)));

    case LSHIFTRT:
      t = lang_hooks.types.unsigned_type (type);
      return FUNC25 (type, FUNC16 (RSHIFT_EXPR, t,
			    		 FUNC32 (t, FUNC15 (x, 0)),
				    	 FUNC32 (type, FUNC15 (x, 1))));

    case ASHIFTRT:
      t = lang_hooks.types.signed_type (type);
      return FUNC25 (type, FUNC16 (RSHIFT_EXPR, t,
					 FUNC32 (t, FUNC15 (x, 0)),
				    	 FUNC32 (type, FUNC15 (x, 1))));

    case DIV:
      if (FUNC11 (type) != REAL_TYPE)
	t = lang_hooks.types.signed_type (type);
      else
	t = type;

      return FUNC25 (type, FUNC16 (TRUNC_DIV_EXPR, t,
				    	 FUNC32 (t, FUNC15 (x, 0)),
				    	 FUNC32 (t, FUNC15 (x, 1))));
    case UDIV:
      t = lang_hooks.types.unsigned_type (type);
      return FUNC25 (type, FUNC16 (TRUNC_DIV_EXPR, t,
				    	 FUNC32 (t, FUNC15 (x, 0)),
				    	 FUNC32 (t, FUNC15 (x, 1))));

    case SIGN_EXTEND:
    case ZERO_EXTEND:
      t = lang_hooks.types.type_for_mode (FUNC5 (FUNC15 (x, 0)),
					  FUNC4 (x) == ZERO_EXTEND);
      return FUNC25 (type, FUNC32 (t, FUNC15 (x, 0)));

    case CONST:
      return FUNC32 (type, FUNC15 (x, 0));

    case SYMBOL_REF:
      t = FUNC10 (x);
      if (t)
	return FUNC25 (type, FUNC18 (t));
      /* else fall through.  */

    default:
      t = FUNC17 (VAR_DECL, NULL_TREE, type);

      /* If TYPE is a POINTER_TYPE, X might be Pmode with TYPE_MODE being
	 ptr_mode.  So convert.  */
      if (FUNC8 (type))
	x = FUNC22 (FUNC13 (type), x);

      /* Note that we do *not* use SET_DECL_RTL here, because we do not
	 want set_decl_rtl to go adjusting REG_ATTRS for this temporary.  */
      t->decl_with_rtl.rtl = x;

      return t;
    }
}